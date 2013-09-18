class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    can :show, User do |u|
      u == user
    end
    can [:create, :new, :edit, :update, :index, :show], Consultation
  end
  
end
