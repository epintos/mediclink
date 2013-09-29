class RemoveDoctorTypeFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :doctor_type
  end

  def down
    add_column :users, :doctor_type, :string
  end
end
