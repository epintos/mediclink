class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    case user
      when User
        can [:show, :edit, :update, :regenerate_emergency_token, :edit_emergency_information, :update_emergency_information], User do |u|
          u == user
        end
        can [:edit, :update, :show], BloodWork do |blood_work|
          blood_work.user == user
        end
        can [:create, :new, :index], BloodWork
        can [:edit, :update, :show], Consultation do |consultation|
          consultation.user == user
        end
        can [:create, :new, :index], Consultation
    end
    
  end
  
end
