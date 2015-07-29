class CreateTodoRailsTasks < ActiveRecord::Migration
  def change
    create_table :todo_rails_tasks do |t|
      t.string :title
      t.boolean :completed
      t.integer :row_order
      t.integer :priority
      t.text :comment

      t.timestamps null: false
    end
  end
end
