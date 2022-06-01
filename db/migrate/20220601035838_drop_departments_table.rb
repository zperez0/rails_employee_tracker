class DropDepartmentsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :departments
  end

  if foreign_key_exists? :employees, :departments
    remove_foreign_key :employees, :departments
  end
end
