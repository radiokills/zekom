require 'test_helper'

module Zekom
  class ZekomControllerTest < ActionController::TestCase
    test "should get about" do
      get :about
      assert_response :success
    end
  
  end
end
