class BloodWork < ActiveRecord::Base
  belongs_to :user
  attr_accessible :colesterol, :user

  scope :for, ->(user) { where(user_id: user.id) }
end
