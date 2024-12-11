class AddChallengesToProjects < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :challenges, :text
  end
end
