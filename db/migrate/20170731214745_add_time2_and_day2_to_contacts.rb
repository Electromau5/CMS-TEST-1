class AddTime2AndDay2ToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :time2, :integer
    add_column :contacts, :day2, :string
  end
end
