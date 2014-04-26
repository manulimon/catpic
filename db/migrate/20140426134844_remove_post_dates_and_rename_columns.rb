class RemovePostDatesAndRenameColumns < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.remove :create_date, :edit_date
    end
  end
end
