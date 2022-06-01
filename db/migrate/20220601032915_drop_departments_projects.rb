class DropDepartmentsProjects < ActiveRecord::Migration[5.2]
  def change
    drop_table :departments_projects
  end
end
