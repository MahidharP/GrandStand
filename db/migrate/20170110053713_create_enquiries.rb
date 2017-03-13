class CreateEnquiries < ActiveRecord::Migration
  def change
    create_table :enquiries do |t|
      t.string :name
      t.string :email
      t.text :message
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
