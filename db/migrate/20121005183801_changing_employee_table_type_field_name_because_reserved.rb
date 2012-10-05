class ChangingEmployeeTableTypeFieldNameBecauseReserved < ActiveRecord::Migration
  def up
    rename_column(:employees, :type, :employee_type)
  end

  def down
    rename_column(:employees, :employee_type, :type)
  end
end
