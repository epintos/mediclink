class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    case user
      when User
        can [:show, :edit, :update, :regenerate_emergency_token, :edit_emergency_information, :update_emergency_information], User do |u|
          u == user
        end
        can [:create, :new, :edit, :update, :index, :show], BloodWork
        can [:create, :new, :edit, :update, :index, :show], Consultation do |consultation|
          consultation.user = user
        end
    end
    
  end
  
end
