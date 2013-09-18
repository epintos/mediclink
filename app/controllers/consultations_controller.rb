class ConsultationsController < InheritedResources::Base
  load_and_authorize_resource

  def create
    @consultation = Consultation.new(params[:consultation])
    @consultation.user = current_user
    create!
  end
end