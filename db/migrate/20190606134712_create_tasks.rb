class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :project_id
      t.string :title
      t.string :description
      t.date :due_date
      t.timestamps
    end
  end
end
