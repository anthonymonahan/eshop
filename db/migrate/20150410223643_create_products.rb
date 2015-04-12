class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :manufacturer
      t.decimal :price
      t.string :category
      t.string :image

      t.timestamps
    end
  end
end
