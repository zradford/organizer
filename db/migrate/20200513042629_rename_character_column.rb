class RenameCharacterColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :characters, :type, :name_of_class
  end
end
