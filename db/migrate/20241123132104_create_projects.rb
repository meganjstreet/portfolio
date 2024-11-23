class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :subtitle
      t.text :description
      t.string :url
      t.string :stack

      t.timestamps
    end
  end
end
