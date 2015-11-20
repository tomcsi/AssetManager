class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.date :startdate
      t.date :enddate

      t.timestamps null: false
    end
  end
end
