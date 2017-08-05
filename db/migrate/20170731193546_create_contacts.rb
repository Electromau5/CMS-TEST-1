class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :address
      t.integer :time
      t.string :day
      t.integer :phone
      t.timestamps
    end
  end
end
