class AddCurrencyToItem < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :currency, :string
  end
end
