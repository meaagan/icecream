class CreateTotalPrices < ActiveRecord::Migration[6.0]
  def change
    create_table :total_prices do |t|

      t.timestamps
    end
  end
end
