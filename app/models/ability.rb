class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    case user
      when User
        can :show, User do |u|
          u == user
        end
    end
    can [:create, :new, :edit, :update, :index, :show], Consultation
  end
  
end
