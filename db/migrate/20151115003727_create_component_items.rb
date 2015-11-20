class CreateComponentItems < ActiveRecord::Migration
  def change
    create_table :component_items do |t|
      t.references :asset_item
      t.references :component
      t.date :incomingdate
      t.date :installdate
      t.references :installer
      t.string :identification

      t.timestamps null: false
    end
  end
end
