class AddPriceToTables < ActiveRecord::Migration[6.0]
  def change
    add_column :cones, :price, :integer
    add_column :ice_cream_flavours, :price, :integer
    add_column :ice_cream_types, :price, :integer
    add_column :toppings, :price, :integer
  end
end
