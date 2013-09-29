class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :consultations

  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :age, :emergency_token

  before_create :generate_emergency_token

  def full_name
    "#{first_name}, #{last_name}"
  end

  def generate_emergency_token
    self.emergency_token = Digest::SHA1.hexdigest([email, Time.now, rand].join)
  end
end
