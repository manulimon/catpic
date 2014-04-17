class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :pic_id
      t.string :create_date
      t.string :edit_date
      t.text :text

      t.timestamps
    end
  end
end
