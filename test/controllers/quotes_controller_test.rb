require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
  test 'has a quote on homepage' do
    Quote.destroy_all!
    quote = Quote.create!(saying: 'Wise saying', author: 'Yours Truly')
    get :index
    assert_select 'h1', quote.saying
    assert_select 'h2', quote.author
  end
end
