class ChangePriceToFloat < ActiveRecord::Migration[6.0]
  def change
    change_column :cones, :price, :float
    change_column :ice_cream_types, :price, :float
    change_column :ice_cream_flavours, :price, :float
    change_column :toppings, :price, :float
  end
end
