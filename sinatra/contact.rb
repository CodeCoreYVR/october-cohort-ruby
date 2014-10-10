class Contact
  include DataMapper::Resource

  property :id, Serial
  property :first_name, String
  property :last_name, String
  property :email, String
  property :urgent, Boolean
  property :department, String
  property :category, String
  property :message, Text
  property :note, Text

end
