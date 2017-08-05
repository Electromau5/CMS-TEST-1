class CreateMenu < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name
      t.text :description
      t.string :type
      t.attachment :image
    end
  end
end
