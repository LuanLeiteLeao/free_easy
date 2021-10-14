class RenameCollName < ActiveRecord::Migration[6.1]
  def change
     rename_column :projects, :maximum_Value_hour, :maximum_value_hour
  end
end
