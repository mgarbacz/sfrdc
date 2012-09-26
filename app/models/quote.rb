class Quote < ActiveRecord::Base
  attr_accessible :author, :quote
  validates :author, :quote, :presence => true
end
