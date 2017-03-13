class CreateUserSocialNetworks < ActiveRecord::Migration
  def change
    create_table :user_social_networks do |t|
      t.integer :social_network_id
      t.integer :user_id
      t.string :url

      t.timestamps null: false
    end
  end
end
