require "pony"

class EmailSender

  def self.mail(params)
    Pony.mail(to: "tam@codecore.ca",
              from: params[:email],
              reply_to: params[:email],
              subject: "#{params[:first_name]} contacted you!",
              body: message_body(params),
              via: :smtp,
              via_options: {
                address: "smtp.gmail.com",
                port: "587",
                user_name: "PUT SOMETHING VALID",
                password: "PUT SOMETHING VALID",
                authentication: :plain,
                domain: "localhost",
                enable_starttls_auto: true
              })
  end

  private

  def self.message_body(params)
    "Category: #{params[:category]}
     Department: #{params[:department]}
     Urgent: #{params[:urgent] ? 'Yes' : 'No'}
     Message: #{params[:message]}"
  end

end
