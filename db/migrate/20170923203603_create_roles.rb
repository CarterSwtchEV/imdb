class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.integer :movies_id
      t.integer :actors_id

      t.timestamps

    end
  end
end
