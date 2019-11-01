class AddsTaskListIdToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :task_list_id, :integer
  end
end
