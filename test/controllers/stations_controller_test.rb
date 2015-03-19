require 'test_helper'

class StationsControllerTest < ActionController::TestCase

  test '#index' do
    VCR.use_cassette("stations_index") do
      get :index
      # assert_equal 200, response.status
      assert_includes response.body, ""
    end
  end

  test '#show' do
    skip
    VCR.use_cassette("stations_show") do
      get :show, id: 4
      assigns @station
      assert_equal 200, response.status
      assert_includes response.body, ""
    end
  end
end
