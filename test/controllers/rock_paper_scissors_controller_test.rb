require 'test_helper'

class RockPaperScissorsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should post throw success" do
    post :throw, sign: "Rock"
    assert_response :success
    assert assigns(:result)
  end

  test "post no params" do
    assert_raises ActionController::ParameterMissing do
      post :throw
    end
  end

  test "post invalid param" do
    assert_raises Exception do
      post :throw, sign: "asdf"
    end
  end
end
