class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.string :name
      t.text :description
      t.string :url
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
