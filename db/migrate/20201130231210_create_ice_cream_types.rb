class CreateIceCreamTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :ice_cream_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
