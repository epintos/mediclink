class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :consultations

  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :age

  def full_name
    "#{first_name}, #{last_name}"
  end
end
