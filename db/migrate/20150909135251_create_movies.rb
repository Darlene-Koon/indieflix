class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :release_year
      t.text :description
      t.string :poster
      t.integer :genre_id

      t.timestamps null: false
    end
  end
end
