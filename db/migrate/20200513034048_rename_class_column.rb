class RenameClassColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :characters, :class, :type
  end
end
