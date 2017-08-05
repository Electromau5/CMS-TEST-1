class CreateKitchen < ActiveRecord::Migration
  def change
    create_table :kitchens do |t|
      t.text :description
      t.attachment :image
    end
  end
end
