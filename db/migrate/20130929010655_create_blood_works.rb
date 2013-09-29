class CreateBloodWorks < ActiveRecord::Migration
  def change
    create_table :blood_works do |t|
      t.float :colesterol
      t.references :user

      t.timestamps
    end
    add_index :blood_works, :user_id
  end
end
