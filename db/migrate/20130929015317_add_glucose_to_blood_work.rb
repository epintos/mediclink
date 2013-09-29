class AddGlucoseToBloodWork < ActiveRecord::Migration
  def change
    add_column :blood_works, :glucose, :float
    add_column :blood_works, :red_blood_cells, :float
    add_column :blood_works, :white_blood_cells, :float
  end
end
