class ChartDrawer < SimpleDelegator

  def initialize()
  end

  def draw(title, blood_works, data, unit)
    LazyHighCharts::HighChart.new(title) do |f|
        f.title({ :text=> I18n.t("blood_works.#{title}")})
        f.options[:xAxis][:categories] = blood_works.map { |bw| I18n.l(bw.created_at, format: :short) }
        f.options[:yAxis][:title][:text] = I18n.t('blood_works.units', unit: unit)
        f.series(:type=> 'spline',name: I18n.t("blood_works.#{title}"), data: data)
      end
  end

end