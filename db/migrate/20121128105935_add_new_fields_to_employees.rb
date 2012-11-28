class AddNewFieldsToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :crop_x, :integer
    add_column :employees, :crop_y, :integer
    add_column :employees, :crop_w, :integer
    add_column :employees, :crop_h, :integer
  end
end
