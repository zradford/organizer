class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.belongs_to :user
      t.string :name
      t.integer :level

      t.timestamps
    end
  end
end
