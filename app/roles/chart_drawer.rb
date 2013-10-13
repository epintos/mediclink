class ChartDrawer < SimpleDelegator

  def initialize(current_user)
    @current_user = current_user
    @blood_works = BloodWork.for(@current_user)
  end

  def draw(title)
    executer = find_executer(title)
    LazyHighCharts::HighChart.new(title) do |f|
        f.title({ :text=> executer.title})
        f.options[:xAxis][:categories] = @blood_works.map { |bw| I18n.l(bw.created_at, format: :short) }
        f.options[:yAxis][:title][:text] = executer.title_text
        f.series(:type=> 'spline',name: executer.title, data: executer.series_data(@blood_works))
      end
  end

  private 

    def executers
      colesterol = ColesterolDrawer.new
      glucose = GlucoseDrawer.new
      red_blood_cells = RedBloodCellsDrawer.new
      white_blood_cells = WhiteBloodCellsDrawer.new
      [colesterol, glucose, red_blood_cells, white_blood_cells]
    end

     def find_executer(title)
      executers.find { |executer| executer.match?(title) }
    end

    class ColesterolDrawer
      def match?(title)
        title.eql? 'colesterol'
      end

      def title
        I18n.t("blood_works.colesterol")
      end

      def title_text
        I18n.t('blood_works.units', unit: "mg/dl")
      end

      def series_data(blood_works)
        blood_works.map { |bw| bw.colesterol }
      end
    end

    class GlucoseDrawer
      def match?(title)
        title.eql? 'glucose'
      end

      def title
        I18n.t("blood_works.glucose")
      end

      def title_text
        I18n.t('blood_works.units', unit: "mg/dl")
      end

      def series_data(blood_works)
        blood_works.map { |bw| bw.glucose }
      end
    end

    class RedBloodCellsDrawer
      def match?(title)
        title.eql? 'red_blood_cells'
      end

      def title
        I18n.t("blood_works.red_blood_cells")
      end

      def title_text
        I18n.t('blood_works.units', unit: "e12/L")
      end

      def series_data(blood_works)
        blood_works.map { |bw| bw.red_blood_cells }
      end
    end

    class WhiteBloodCellsDrawer
      def match?(title)
        title.eql? 'white_blood_cells'
      end

      def title
        I18n.t("blood_works.white_blood_cells")
      end

      def title_text
        I18n.t('blood_works.units', unit: "e9/L")
      end

      def series_data(blood_works)
        blood_works.map { |bw| bw.white_blood_cells }
      end
    end

end