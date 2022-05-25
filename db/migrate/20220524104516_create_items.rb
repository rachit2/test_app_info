class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.integer :product_id
      t.decimal :price
      t.string :item_name

      t.timestamps
    end
  end
end
