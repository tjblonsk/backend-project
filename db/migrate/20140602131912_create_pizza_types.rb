class CreatePizzaTypes < ActiveRecord::Migration
  def change
    create_table :pizza_types do |t|
      t.string :name
      t.integer :price
      t.references :order_items
    end
  end
end
