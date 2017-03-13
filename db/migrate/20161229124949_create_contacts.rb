class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.references :user, index: true, foreign_key: true
      t.string :mobile
      t.string :email
      t.string :website
      t.text :address

      t.timestamps null: false
    end
  end
end
