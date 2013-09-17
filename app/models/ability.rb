class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    can :show, User do |u|
      u == user
    end
  end
  
end
