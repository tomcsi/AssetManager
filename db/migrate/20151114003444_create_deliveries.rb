class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.date :date
      t.string :direction
      t.references :supplier, null: true
      t.references :person, null: true

      t.timestamps null: false
    end
  end
end
