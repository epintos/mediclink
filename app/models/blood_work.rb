class BloodWork < ActiveRecord::Base
  belongs_to :user
  attr_accessible :colesterol, :user, :glucose, :red_blood_cells, :white_blood_cells

  scope :for, ->(user) { where(user_id: user.id) }
end
