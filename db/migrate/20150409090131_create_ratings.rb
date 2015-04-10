class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :name
      t.string :ticker
      t.float :cap
      t.float :score
      t.string :fundamental
      t.string :valuation
      t.string :ownership
      t.float :pe_ration
      t.float :price

      t.timestamps null: false
    end
  end
end
