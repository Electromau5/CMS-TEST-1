class CreateSocials < ActiveRecord::Migration
  def change
    create_table :socials do |t|
      t.string :name
      t.string :link
      t.attachment :image
    end
  end
end
