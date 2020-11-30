class AddForeignKeysToSundaes < ActiveRecord::Migration[6.0]
  def change
    add_reference :sundaes, :cone, foreign_key: true
    add_reference :sundaes, :ice_cream_flavour, foreign_key: true
    add_reference :sundaes, :ice_cream_type, foreign_key: true
    add_reference :sundaes, :topping, foreign_key: true
  end
end