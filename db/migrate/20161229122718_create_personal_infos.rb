class CreatePersonalInfos < ActiveRecord::Migration
  def change
    create_table :personal_infos do |t|
      t.integer :user_id
      t.text :profile
      t.string :designation
      t.string :image
      t.date :birthday
      t.string :nationality
      t.string :language

      t.timestamps null: false
    end
  end
end
