class ConsultationsController < InheritedResources::Base
  load_and_authorize_resource

  def index
    blood_works = BloodWork.for(current_user)
    colesterol_chart(blood_works)
    glucose_chart(blood_works)
    red_blood_cells_chart(blood_works)
    white_blood_cells_chart(blood_works)
  end

  def create
    @consultation = Consultation.new(params[:consultation])
    @consultation.user = current_user
    create!
  end

  private
    def colesterol_chart(blood_works)
      @colesterol = LazyHighCharts::HighChart.new('blood_work') do |f|
        f.title({ :text=> I18n.t('blood_work.colesterol')})
        f.options[:xAxis][:categories] = blood_works.map { |bw| I18n.l(bw.created_at, format: :short) }
        f.options[:yAxis][:title][:text] = "Cantidad (unidad mg/dl)"
        f.series(:type=> 'spline',name: I18n.t('blood_work.colesterol'), data: blood_works.map { |bw| bw.colesterol })
      end
    end

    def glucose_chart(blood_works)
      @glucose = LazyHighCharts::HighChart.new('blood_work') do |f|
        f.title({ :text=> I18n.t('blood_work.glucose')})
        f.options[:xAxis][:categories] = blood_works.map { |bw| I18n.l(bw.created_at, format: :short) }
        f.options[:yAxis][:title][:text] = "Cantidad (unidad mg/dl)"
        f.series(:type=> 'spline', name: I18n.t('blood_work.glucose'), data: blood_works.map { |bw| bw.glucose })
      end
    end

    def red_blood_cells_chart(blood_works)
      @red_blood_cells = LazyHighCharts::HighChart.new('blood_work') do |f|
        f.title({ :text=> I18n.t('blood_work.red_blood_cells')})
        f.options[:xAxis][:categories] = blood_works.map { |bw| I18n.l(bw.created_at, format: :short) }
        f.options[:yAxis][:title][:text] = "Cantidad (unidad e12/L)"
        f.series(:type=> 'spline', name: I18n.t('blood_work.red_blood_cells'), data: blood_works.map { |bw| bw.red_blood_cells })
      end
    end

    def white_blood_cells_chart(blood_works)
      @white_blood_cells = LazyHighCharts::HighChart.new('blood_work') do |f|
        f.title({ :text=> I18n.t('blood_work.white_blood_cells')})
        f.options[:xAxis][:categories] = blood_works.map { |bw| I18n.l(bw.created_at, format: :short) }
        f.options[:yAxis][:title][:text] = "Cantidad (unidad e9/L)"
        f.series(:type=> 'spline', name: I18n.t('blood_work.white_blood_cells'), data: blood_works.map { |bw| bw.white_blood_cells })
      end
    end
end