class AddTimeAndPhoneToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :time, :string
    add_column :contacts, :time2, :string
    add_column :contacts, :phone, :string
  end
end
