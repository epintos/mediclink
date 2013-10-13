class ConsultationsController < InheritedResources::Base
  load_and_authorize_resource

  def index
    @colesterol = ChartDrawer.new(current_user).draw('colesterol')
    @glucose = ChartDrawer.new(current_user).draw('glucose')
    @red_blood_cells = ChartDrawer.new(current_user).draw('red_blood_cells')
    @white_blood_cells = ChartDrawer.new(current_user).draw('white_blood_cells')
  end

  def create
    @consultation = Consultation.new(params[:consultation])
    @consultation.user = current_user
    create!
  end
  
end