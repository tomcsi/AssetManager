class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :contactname
      t.string :contactphone

      t.timestamps null: false
    end
  end
end
