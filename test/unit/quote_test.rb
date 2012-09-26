require 'test_helper'

class QuoteTest < ActiveSupport::TestCase

  test "should not save quote without quote" do
    quote = Quote.new
    quote.author = "We have author but no quote"
    assert !quote.save
  end

  test "should not save quote without author" do
    quote = Quote.new
    quote.quote = "We have a quote but no author"
    assert !quote.save
  end

end
