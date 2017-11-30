class Contact < MailForm::Base
  attribute :name,		:validate => true
  attribute :email,		:validate => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  attribute :message, 	:validate => true
  attribute :nickname, 	:validate => true

  def headers 
  	{
  	  :subject => "Contact Form",
  	  :to => "erenbozkurtdeu@gmail.com",
  	  :from => %("#{name}" <#{email}>)
  	}
  end
end