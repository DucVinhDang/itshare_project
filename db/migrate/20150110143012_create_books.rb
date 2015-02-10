class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.integer :author_id
      t.integer :category_id
      t.integer :year
      t.integer :star_rating
      t.integer :download
      t.text :description

      t.timestamps null: false
    end
  end
end
