require 'test_helper'

class TutorialContentsControllerTest < ActionController::TestCase
  setup do
    @tutorial_content = tutorial_contents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tutorial_contents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tutorial_content" do
    assert_difference('TutorialContent.count') do
      post :create, tutorial_content: { image: @tutorial_content.image, name: @tutorial_content.name, sequence: @tutorial_content.sequence, tutorial_id: @tutorial_content.tutorial_id }
    end

    assert_redirected_to tutorial_content_path(assigns(:tutorial_content))
  end

  test "should show tutorial_content" do
    get :show, id: @tutorial_content
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tutorial_content
    assert_response :success
  end

  test "should update tutorial_content" do
    patch :update, id: @tutorial_content, tutorial_content: { image: @tutorial_content.image, name: @tutorial_content.name, sequence: @tutorial_content.sequence, tutorial_id: @tutorial_content.tutorial_id }
    assert_redirected_to tutorial_content_path(assigns(:tutorial_content))
  end

  test "should destroy tutorial_content" do
    assert_difference('TutorialContent.count', -1) do
      delete :destroy, id: @tutorial_content
    end

    assert_redirected_to tutorial_contents_path
  end
end
