class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :brand
      t.string :category
      t.integer :price_per_day
      t.string :title

      t.timestamps
    end
  end
end
