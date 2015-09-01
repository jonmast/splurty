require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
  test 'has welcome message on homepage' do
    get :index
    assert_select 'h1', 'Welcome to my Awesome Web App'
  end
end
