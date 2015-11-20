class CreateConsumables < ActiveRecord::Migration
  def change
    create_table :consumables do |t|
      t.string :name
      t.references :category
      t.integer :qty
      t.references :responsible

      t.timestamps null: false
    end
  end
end
