class CreateBorrowings < ActiveRecord::Migration
  def change
    create_table :borrowings do |t|
      t.references :asset
      t.references :person
      t.date :startdate
      t.date :enddate
      t.boolean :permanently

      t.timestamps null: false
    end
  end
end
