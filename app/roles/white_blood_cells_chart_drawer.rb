class WhiteBloodCellsChartDrawer < SimpleDelegator

  def initialize(blood_works)
    @blood_works = blood_works
  end

  def draw
    ChartDrawer.new.draw('white_blood_cells', @blood_works, generate_white_blood_cells_data, "e9/L")
  end

  private

    def generate_white_blood_cells_data
      @blood_works.map { |bw| bw.white_blood_cells }
    end

end