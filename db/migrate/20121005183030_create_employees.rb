class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :type
      t.string :department
      t.text :bio

      t.timestamps
    end
  end
end
