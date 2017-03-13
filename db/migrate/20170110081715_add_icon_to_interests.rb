class AddIconToInterests < ActiveRecord::Migration
  def change
    add_column :interests, :icon, :string
  end
end
