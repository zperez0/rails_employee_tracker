class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :job_title
      t.integer :department_id

      t.timestamps
    end
  end
end