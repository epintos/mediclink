class BloodWorksController < InheritedResources::Base
  load_and_authorize_resource

  def create
    @blood_work = BloodWork.new(params[:blood_work])
    @blood_work.user = current_user
    create! do |success, failuer|
      success.html { redirect_to consultations_path }
    end
  end
end