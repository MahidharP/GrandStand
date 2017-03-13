require 'test_helper'

class PersonalSkillsControllerTest < ActionController::TestCase
  setup do
    @personal_skill = personal_skills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personal_skills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personal_skill" do
    assert_difference('PersonalSkill.count') do
      post :create, personal_skill: { name: @personal_skill.name }
    end

    assert_redirected_to personal_skill_path(assigns(:personal_skill))
  end

  test "should show personal_skill" do
    get :show, id: @personal_skill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personal_skill
    assert_response :success
  end

  test "should update personal_skill" do
    patch :update, id: @personal_skill, personal_skill: { name: @personal_skill.name }
    assert_redirected_to personal_skill_path(assigns(:personal_skill))
  end

  test "should destroy personal_skill" do
    assert_difference('PersonalSkill.count', -1) do
      delete :destroy, id: @personal_skill
    end

    assert_redirected_to personal_skills_path
  end
end
