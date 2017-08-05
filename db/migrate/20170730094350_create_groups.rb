class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :title
      t.text :description
      t.attachment :image
      t.timestamps
    end
  end
end
