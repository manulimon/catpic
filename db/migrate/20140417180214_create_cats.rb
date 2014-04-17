class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.integer :age
      t.string :race
      t.string :gender
      t.string :color
      t.string :coat

      t.timestamps
    end
  end
end
