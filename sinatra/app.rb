require "sinatra"
require "data_mapper"
require "./email_sender"

DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/data.db")

# Load up the models
require "./contact"

DataMapper.finalize
DataMapper.auto_upgrade!

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
