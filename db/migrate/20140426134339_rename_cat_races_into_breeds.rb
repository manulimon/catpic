class RenameCatRacesIntoBreeds < ActiveRecord::Migration
  def change
    change_table :cats do |t|
      t.rename :race, :breed
    end
  end
end