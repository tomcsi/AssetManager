class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :name
      t.references :category
      t.references :responsible

      t.timestamps null: false
    end
  end
end
