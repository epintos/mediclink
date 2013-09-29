class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :blood_type, :string
    add_column :users, :phone, :string
    add_column :users, :observations, :string
  end
end
