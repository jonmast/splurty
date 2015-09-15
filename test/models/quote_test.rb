require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  test 'unique_tag' do
    quote = Quote.create(author: 'Ken Mazaika', saying: 'You only yolo once')
    assert_equal 'KM#' + quote.id.to_s, quote.unique_tag
  end
end
