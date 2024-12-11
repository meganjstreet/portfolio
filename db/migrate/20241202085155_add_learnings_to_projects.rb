class AddLearningsToProjects < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :learnings, :text
  end
end
