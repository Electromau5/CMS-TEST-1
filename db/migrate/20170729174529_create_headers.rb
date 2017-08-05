class CreateHeaders < ActiveRecord::Migration
  def change
    create_table :headers do |t|
      t.string :name
    end
  end
end
