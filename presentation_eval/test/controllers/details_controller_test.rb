require 'test_helper'

class DetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get instructor" do
    get details_instructor_url
    assert_response :success
  end

  test "should get feedback" do
    get details_feedback_url
    assert_response :success
  end

  test "should get student" do
    get details_student_url
    assert_response :success
  end

end
