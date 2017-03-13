class CreateWorkExperiences < ActiveRecord::Migration
  def change
    create_table :work_experiences do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.text :description
      t.string :company
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
