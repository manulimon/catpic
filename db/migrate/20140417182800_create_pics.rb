class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|
      t.integer :user_id
      t.string :url
      t.string :header
      t.string :date
      t.string :desc
      t.string :exif

      t.timestamps
    end
  end
end
