#encoding: utf-8

case Rails.env
when "development"
	
  user = User.create(email: 'user@example.com', password: 'password', password_confirmation: 'password', first_name: 'Pepe', last_name: 'Santos', birth_date: '12/12/1990')
  BloodWork.create(colesterol: 150, glucose: 120, red_blood_cells: 100, white_blood_cells: 110, user: user, created_at: Time.now + 1.month) 
  BloodWork.create(colesterol: 130, glucose: 130, red_blood_cells: 110, white_blood_cells: 110, user: user, created_at: Time.now + 3.month) 
  BloodWork.create(colesterol: 140, glucose: 135, red_blood_cells: 100, white_blood_cells: 110, user: user, created_at: Time.now + 6.month) 
  BloodWork.create(colesterol: 120, glucose: 140, red_blood_cells: 100, white_blood_cells: 110, user: user, created_at: Time.now + 9.month) 
  BloodWork.create(colesterol: 110, glucose: 125, red_blood_cells: 100, white_blood_cells: 115, user: user, created_at: Time.now + 11.month) 
  BloodWork.create(colesterol: 140, glucose: 135, red_blood_cells: 100, white_blood_cells: 112, user: user, created_at: Time.now + 13.month) 
  BloodWork.create(colesterol: 130, glucose: 130, red_blood_cells: 105, white_blood_cells: 114, user: user, created_at: Time.now + 16.month) 
  BloodWork.create(colesterol: 150, glucose: 140, red_blood_cells: 108, white_blood_cells: 110, user: user, created_at: Time.now + 18.month) 
  BloodWork.create(colesterol: 160, glucose: 145, red_blood_cells: 110, white_blood_cells: 115, user: user, created_at: Time.now + 22.month) 
  BloodWork.create(colesterol: 165, glucose: 148, red_blood_cells: 108, white_blood_cells: 108, user: user, created_at: Time.now + 25.month) 
  BloodWork.create(colesterol: 155, glucose: 152, red_blood_cells: 108, white_blood_cells: 112, user: user, created_at: Time.now + 27.month) 
  BloodWork.create(colesterol: 170, glucose: 150, red_blood_cells: 112, white_blood_cells: 115, user: user, created_at: Time.now + 32.month) 
  BloodWork.create(colesterol: 165, glucose: 145, red_blood_cells: 115, white_blood_cells: 113, user: user, created_at: Time.now + 35.month) 
  BloodWork.create(colesterol: 160, glucose: 155, red_blood_cells: 120, white_blood_cells: 120, user: user, created_at: Time.now + 39.month) 
  BloodWork.create(colesterol: 170, glucose: 145, red_blood_cells: 125, white_blood_cells: 110, user: user, created_at: Time.now + 41.month) 
  BloodWork.create(colesterol: 170, glucose: 140, red_blood_cells: 130, white_blood_cells: 110, user: user, created_at: Time.now + 45.month) 
  BloodWork.create(colesterol: 170, glucose: 130, red_blood_cells: 110, white_blood_cells: 112, user: user, created_at: Time.now + 49.month) 
  BloodWork.create(colesterol: 160, glucose: 145, red_blood_cells: 108, white_blood_cells: 110, user: user, created_at: Time.now + 50.month) 
end
