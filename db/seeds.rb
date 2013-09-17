#encoding: utf-8

case Rails.env
when "development"
	
  User.create(email: 'user@example.com', password: 'password', password_confirmation: 'password')
  
end
