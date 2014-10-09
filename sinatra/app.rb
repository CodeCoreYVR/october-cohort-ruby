require "sinatra"

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
  "Thanks for contacting us #{params[:first_name]}!"
end
