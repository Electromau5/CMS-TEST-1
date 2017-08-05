class CreateHome < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.attachment :banner1
      t.attachment :banner2
    end
  end
end
