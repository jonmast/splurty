require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
  test 'quote show page' do
    quote = Quote.create(author: 'Ken Mazaika', saying: 'You only yolo once.')
    get :show, id: quote.id
    assert_response :success
  end

  test 'quote show page 404' do
    get :show, id: 'invalid_id'
    assert_response :not_found
  end
end
