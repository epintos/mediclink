class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    case user
      when User
        can [:show, :edit, :update], User do |u|
          u == user
        end
        can [:create, :new, :edit, :update, :index, :show], Consultation
        can [:create, :new, :edit, :update, :index, :show], BloodWork
    end
    
  end
  
end
