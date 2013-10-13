class ConsultationsController < InheritedResources::Base
  load_and_authorize_resource

  def index
    @blood_works = BloodWork.for(@current_user)
    @colesterol = ColesterolChartDrawer.new(@blood_works).draw
    @glucose = GlucoseChartDrawer.new(@blood_works).draw
    @red_blood_cells = RedBloodCellsChartDrawer.new(@blood_works).draw
    @white_blood_cells = WhiteBloodCellsChartDrawer.new(@blood_works).draw
  end

  def create
    @consultation = Consultation.new(params[:consultation])
    @consultation.user = current_user
    create!
  end
  
end