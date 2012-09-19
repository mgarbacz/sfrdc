Given /^I know how many quotes I have$/ do
  @number_quotes = Quote.count
end

Given /^I have no quotes$/ do
  Quote.delete_all
end

When /^I create a new quote$/ do
  quote = Quote.new
  quote.quote = 'Test quote'
  quote.author = 'Quote tester'
  quote.save
end

Then /^I should have one additional quote$/ do
  Quote.count.should == @number_quotes + 1
end

Then /^I should have (\d+) quote$/ do |num_quotes|
  Quote.count.should == num_quotes.to_i
end
