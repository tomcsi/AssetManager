class CreateDeliveryItems < ActiveRecord::Migration
  def change
    create_table :delivery_items do |t|
      t.references :delivery
      t.string :direction
      t.integer :product_id
      t.string :product_type

      t.timestamps null: false
    end
  end
end
