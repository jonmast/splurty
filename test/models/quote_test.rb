require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  test 'unique_tag' do
    quote = FactoryGirl.create(:quote)
    assert_equal 'GV#' + quote.id.to_s, quote.unique_tag
  end
end
