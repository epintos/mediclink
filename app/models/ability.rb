class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    case user
      when User
        can [:show, :edit, :update, :regenerate_emergency_token], User do |u|
          u == user
        end
        can [:create, :new, :edit, :update, :index, :show], Consultation do |consultation|
          consultation.user = user
        end
    end
    
  end
  
end
