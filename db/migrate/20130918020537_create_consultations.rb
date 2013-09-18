class CreateConsultations < ActiveRecord::Migration
  def change
    create_table :consultations do |t|
      t.datetime :date
      t.string :comments
      t.string :doctor
      t.string :file

      t.timestamps
    end
  end
end
