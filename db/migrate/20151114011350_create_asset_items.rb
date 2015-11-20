class CreateAssetItems < ActiveRecord::Migration
  def change
    create_table :asset_items do |t|
      t.references :asset
      t.date :incomingdate
      t.date :installdate
      t.string :installposition
      t.references :installer
      t.string :identification

      t.timestamps null: false
    end
  end
end
