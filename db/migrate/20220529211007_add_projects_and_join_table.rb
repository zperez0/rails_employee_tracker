class AddProjectsAndJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title

      t.timestamps
  end

  create_table :departments_projects, id: false do |t|
    t.belongs_to :project, index: true
    t.belongs_to :department, index: true
    end
  end
end