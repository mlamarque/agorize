require 'test_helper'

class SkillsUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skills_user = skills_users(:one)
  end

  test "should get index" do
    get skills_users_url
    assert_response :success
  end

  test "should get new" do
    get new_skills_user_url
    assert_response :success
  end

  test "should create skills_user" do
    assert_difference('SkillsUser.count') do
      post skills_users_url, params: { skills_user: { skill_id: @skills_user.skill_id, user_id: @skills_user.user_id } }
    end

    assert_redirected_to skills_user_url(SkillsUser.last)
  end

  test "should show skills_user" do
    get skills_user_url(@skills_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_skills_user_url(@skills_user)
    assert_response :success
  end

  test "should update skills_user" do
    patch skills_user_url(@skills_user), params: { skills_user: { skill_id: @skills_user.skill_id, user_id: @skills_user.user_id } }
    assert_redirected_to skills_user_url(@skills_user)
  end

  test "should destroy skills_user" do
    assert_difference('SkillsUser.count', -1) do
      delete skills_user_url(@skills_user)
    end

    assert_redirected_to skills_users_url
  end
end
