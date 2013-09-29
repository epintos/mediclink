class UsersController < ApplicationController
	load_and_authorize_resource
	before_filter :authenticate_user!, :except => [:view_emergency_information]  
  inherit_resources

  def regenerate_emergency_token
    @current_user.generate_emergency_token
    @current_user.save!
    redirect_to @current_user
  end

  def edit_emergency_information
    @user = @current_user
  end

  def update_emergency_information
    @current_user.update_attributes(params[:user])
    redirect_to @current_user
  end

  def view_emergency_information
    @user = User.where(emergency_token: params[:emergency_token]).first
    if @user.nil?
      @user = User.new
      flash[:error] = t('activerecord.errors.models.user.attributes.emergency_token_invalid')
    end
    flash[:error] = nil
  end

end