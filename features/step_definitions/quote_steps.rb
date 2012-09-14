When /^I create a quote$/ do
  quote = Quote.new
  quote.save
end

Then /^the quote should exist in the database$/ do
  quote = Quote.find(1)
end
