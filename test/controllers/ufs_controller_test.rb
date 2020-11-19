require 'test_helper'

class UfsControllerTest < ActionDispatch::IntegrationTest
  test "should get respuesta" do
    get ufs_respuesta_url
    assert_response :success
  end

end
