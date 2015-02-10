class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :nationality
      t.integer :year
      t.integer :follower
      t.text :description

      t.timestamps null: false
    end
  end
end
