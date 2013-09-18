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
  end
  
end
