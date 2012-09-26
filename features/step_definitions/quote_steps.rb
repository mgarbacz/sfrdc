Given /^I am an admin$/ do
  #nothing for now!
end

Then /^I can create new quotes$/ do
  quote = Quote.new
  quote.quote = 'Test quote of magnificence'
  quote.author = 'Quote Creator'
  quote.save
end

Then /^I can update existing quotes$/ do
  quote = Quote.new
  quote.quote = 'Test quote to be edited'
  quote.author = 'Quote Editor'
  quote.save

  quote.update_attributes(:quote => 'Test quote of edited magnificence')
end

Then /^I can delete existing quotes$/ do
  quote = Quote.new
  quote.quote = 'Test quote to be deleted'
  quote.author = 'Quote Deletor'
  quote.save

  quote.delete
end
