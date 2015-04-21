class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :manufacturer
      t.decimal :price, precision: 8, scale: 2
      t.string :category
      t.string :image

      t.timestamps
    end
  end
end
