class UsersController < ApplicationController
	load_and_authorize_resource
	before_filter :authenticate_user!
  inherit_resources

  def regenerate_emergency_token
    @current_user.generate_emergency_token
    @current_user.save!
    redirect_to @current_user
  end
end