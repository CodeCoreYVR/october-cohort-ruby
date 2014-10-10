require "sinatra"
require "data_mapper"
require "./email_sender"

DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/data.db")

# Load up the models
require "./contact"

DataMapper.finalize
DataMapper.auto_upgrade!

use Rack::MethodOverride

enable :sessions

helpers do
  def protected!
    return if authorized?
    headers['WWW-Authenticate'] = 'Basic realm="Restricted Area"'
    halt 401, "Not authorized\n"
  end

  def authorized?
    @auth ||=  Rack::Auth::Basic::Request.new(request.env)
    @auth.provided? and @auth.basic? and @auth.credentials and  @auth.credentials == ['admin', 'admin']
  end
end


get "/" do
  @name = params[:name]
  # ERB is a method that help generate an
  # HTML page. The first argument is the erb tempalte
  # file name in the views folder. The second argument 
  # is a hash of options for things like: layout
  erb(:index, {layout: :default})
end

get "/contact" do
  erb :contact, layout: :default
end

get "/all" do
  protected!
  @contacts = Contact.all(order: [ :first_name.asc ])
  erb :all, layout: :default
end

post "/contact" do
  Contact.create({
      first_name: params[:first_name],
      last_name:  params[:last_name],
      email:      params[:email],
      urgent:     params[:urgent] == "on",
      department: params[:department],
      category:   params[:category],
      message:    params[:message]
    })
  # EmailSender.mail(params)
  erb :thank_you, layout: :default
end

# A notation in side the URL matcher that has
# a colon : before it means it's a variables with
# that name which mean it will match with anything
# that is passed in that location
get '/contacts/:id' do |id|
  protected!
  @contact = Contact.get id
  session[:last_visited_user_name] = @contact.first_name
  erb :contact_display, layout: :default
end

patch "/contacts/:id" do |id|
  protected!
  @contact      = Contact.get id
  @contact.note = params[:note]
  @contact.save
  redirect to("/contacts/#{@contact.id}")
end

delete "/contacts/:id" do |id|
  protected!
  @contact = Contact.get id
  @contact.destroy
  redirect to("/all")
end

get "/change_color/:color" do |color|
  session[:color] = color
  redirect back  
end
