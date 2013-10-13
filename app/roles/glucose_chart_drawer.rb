class GlucoseChartDrawer < SimpleDelegator

  def initialize(blood_works)
    @blood_works = blood_works
  end

  def draw
    ChartDrawer.new.draw('glucose', @blood_works, generate_glucose_data, "mg/dl")
  end

  private

    def generate_glucose_data
      @blood_works.map { |bw| bw.glucose }
    end

end