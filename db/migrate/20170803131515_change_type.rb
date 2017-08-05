class ChangeType < ActiveRecord::Migration
  def change
  	rename_column :menus, :type, :section
  end
end
