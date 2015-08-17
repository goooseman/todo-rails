class AddArchievedToTasl < ActiveRecord::Migration
  def change
    add_column :todo_rails_tasks, :archieved, :boolean, null: false, default: false
  end
end
