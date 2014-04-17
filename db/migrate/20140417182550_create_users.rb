class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :flickr_id
      t.string :desc

      t.timestamps
    end
  end
end
