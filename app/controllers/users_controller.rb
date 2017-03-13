class UsersController < ApplicationController
  def update
    @user = User.find(current_user.id)
    @user.update_attributes(user_params)
    redirect_to :back
  end

  private
  def user_params
    params[:user].permit(user_proficiency_skills_attributes: [:id, :proficiency_skill_id, :value, :_destroy], user_social_networks_attributes: [:id, :social_network_id, :url, :_destroy], user_personal_skills_attributes: [:id, :personal_skill_id, :value, :_destroy])
  end
end
