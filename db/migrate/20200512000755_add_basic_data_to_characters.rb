class AddBasicDataToCharacters < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :class, :string
    add_column :characters, :strength_modifier, :integer
    add_column :characters, :dexterity_modifier, :integer
    add_column :characters, :constitution_modifier, :integer
    add_column :characters, :intelligence_modifier, :integer
    add_column :characters, :wisdom_modifier, :integer
    add_column :characters, :charisma_modifier, :integer
    add_column :characters, :proficiency_bonus, :integer
  end
end
