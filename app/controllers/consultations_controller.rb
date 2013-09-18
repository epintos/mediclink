class ConsultationsController < InheritedResources::Base
  load_and_authorize_resource

  def create
    @consultation = Consultation.new
    @consultation.user = current_user
    create!
  end
end