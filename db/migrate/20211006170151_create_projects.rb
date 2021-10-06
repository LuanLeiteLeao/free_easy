class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.string :skills_descritions
      t.decimal :maximum_Value_hour  
      t.integer :demand 

      t.timestamps
    end
  end
end
