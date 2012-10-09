class ChangingEmployeeTableEmployeeTypeFieldNameToRole < ActiveRecord::Migration
  def up
    rename_column(:employees, :employee_type, :role)
  end

  def down
    rename_column(:employees, :role, :employee_type)
  end
end
