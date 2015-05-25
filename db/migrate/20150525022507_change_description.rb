class ChangeDescription < ActiveRecord::Migration
  def change
    change_column :widgets, :description, :text
  end
end
