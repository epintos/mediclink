class RedBloodCellsChartDrawer < SimpleDelegator

  def initialize(blood_works)
    @blood_works = blood_works
  end

  def draw
    ChartDrawer.new.draw('red_blood_cells', @blood_works, generate_red_blood_cells_data, "e12/L")
  end

  private

    def generate_red_blood_cells_data
      @blood_works.map { |bw| bw.red_blood_cells }
    end

end