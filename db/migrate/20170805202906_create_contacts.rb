class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
    	t.string :address
    	t.string :day
    	t.string :day2
    	t.string :time
    	t.string :time2
    	t.string :phone
    	t.timestamps
    end
  end
end
