class ChangeDay2g < ActiveRecord::Migration
  def change
  	rename_column :contacts, :day2g, :day2
  end
end
