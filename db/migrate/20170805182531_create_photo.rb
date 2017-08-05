class CreatePhoto < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.attachment :image
    end
  end
end
