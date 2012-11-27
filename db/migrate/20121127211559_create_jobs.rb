class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :position
      t.string :department
      t.text :description
      t.string :apply
      t.date :apply_by

      t.timestamps
    end
  end
end
