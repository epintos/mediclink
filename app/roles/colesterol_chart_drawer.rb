class ColesterolChartDrawer < SimpleDelegator

  def initialize(blood_works)
    @blood_works = blood_works
  end

  def draw
    ChartDrawer.new.draw('colesterol', @blood_works, generate_colesterol_data, "mg/dl")
  end

  private

    def generate_colesterol_data
      @blood_works.map { |bw| bw.colesterol }
    end

end