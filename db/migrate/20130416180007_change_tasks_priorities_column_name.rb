class ChangeTasksPrioritiesColumnName < ActiveRecord::Migration
  def change
    rename_column :tasks, :priority_id, :priority
  end
end
