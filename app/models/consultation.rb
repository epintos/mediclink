class Consultation < ActiveRecord::Base

  belongs_to :user

  mount_uploader :file, FileUploader

  attr_accessible :comments, :date, :doctor, :file, :doctor_type
end
