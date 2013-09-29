class AddDoctorTypeFromConsultations < ActiveRecord::Migration
  def change
    add_column :consultations, :doctor_type, :string
  end
end
