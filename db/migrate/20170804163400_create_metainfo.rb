class CreateMetainfo < ActiveRecord::Migration
  def change
    create_table :metainfos do |t|
      t.string :title
      t.text :description
      t.string :keyword
    end
  end
end
