class PageContent
  include Mongoid::Document

  field :title
  field :category

  attr_accessible :title, :category
end
