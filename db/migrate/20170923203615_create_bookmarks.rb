class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.integer :movie_id
      t.integer :users_id

      t.timestamps

    end
  end
end
