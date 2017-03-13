require 'test_helper'

class ProficiencySkillsControllerTest < ActionController::TestCase
  setup do
    @proficiency_skill = proficiency_skills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proficiency_skills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proficiency_skill" do
    assert_difference('ProficiencySkill.count') do
      post :create, proficiency_skill: { name: @proficiency_skill.name }
    end

    assert_redirected_to proficiency_skill_path(assigns(:proficiency_skill))
  end

  test "should show proficiency_skill" do
    get :show, id: @proficiency_skill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proficiency_skill
    assert_response :success
  end

  test "should update proficiency_skill" do
    patch :update, id: @proficiency_skill, proficiency_skill: { name: @proficiency_skill.name }
    assert_redirected_to proficiency_skill_path(assigns(:proficiency_skill))
  end

  test "should destroy proficiency_skill" do
    assert_difference('ProficiencySkill.count', -1) do
      delete :destroy, id: @proficiency_skill
    end

    assert_redirected_to proficiency_skills_path
  end
end
