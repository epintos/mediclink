class AddDoctorTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :doctor_type, :string
  end
end
