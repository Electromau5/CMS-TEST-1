class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :address
      t.string :time
      t.string :time2
      t.string :day
      t.string :day2g
      t.integer :phone
      t.timestamps
    end
  end
end
