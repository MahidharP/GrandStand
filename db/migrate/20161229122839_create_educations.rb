class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.integer :user_id
      t.string :name
      t.string :college
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
