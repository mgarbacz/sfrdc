class AddNewFieldsToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :crop_x, :integer
    add_column :employees, :crop_y, :integer
    add_column :employees, :crop_w, :integer, :default => 0
    add_column :employees, :crop_h, :integer, :default => 0
  end
end
