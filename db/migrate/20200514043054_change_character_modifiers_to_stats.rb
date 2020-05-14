class ChangeCharacterModifiersToStats < ActiveRecord::Migration[6.0]
  def change
    rename_column :characters, :strength_modifier, :strength
    rename_column :characters, :dexterity_modifier, :dexterity
    rename_column :characters, :constitution_modifier, :constitution
    rename_column :characters, :intelligence_modifier, :intelligence
    rename_column :characters, :wisdom_modifier, :wisdom
    rename_column :characters, :charisma_modifier, :charisma
  end
end
