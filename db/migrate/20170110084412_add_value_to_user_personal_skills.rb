class AddValueToUserPersonalSkills < ActiveRecord::Migration
  def change
    add_column :user_personal_skills, :value, :integer
  end
end
