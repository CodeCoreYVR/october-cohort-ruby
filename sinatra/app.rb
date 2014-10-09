require "sinatra"
require "pony"

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
  message_body = "Category: #{params[:category]}
                  Department: #{params[:department]}
                  Urgent: #{params[:urgent] ? 'Yes' : 'No'}
                  Message: #{params[:message]}"
  Pony.mail(to: "tam@codecore.ca",
            from: params[:email],
            reply_to: params[:email],
            subject: "#{params[:first_name]} contacted you!",
            body: message_body)
  erb :thank_you, layout: :default
end
