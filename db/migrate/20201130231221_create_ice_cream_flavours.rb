class CreateIceCreamFlavours < ActiveRecord::Migration[6.0]
  def change
    create_table :ice_cream_flavours do |t|
      t.string :name

      t.timestamps
    end
  end
end
