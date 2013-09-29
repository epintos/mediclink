class AddEmergencyTokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :emergency_token, :string
  end
end
