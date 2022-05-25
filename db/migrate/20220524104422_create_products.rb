class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :sno
      t.decimal :price
      t.integer :no_of_item

      t.timestamps
    end
  end
end
