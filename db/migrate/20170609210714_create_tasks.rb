class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.datetime :date
      t.string :milestone
      t.string :goal
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
