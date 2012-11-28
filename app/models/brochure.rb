class Brochure < ActiveRecord::Base
  attr_accessible :department, :pdf
  has_attached_file :pdf
  validates :department, :presence => true
  validates_attachment :pdf, :presence => true,
    :content_type => { :content_type => 'application/pdf' }
end
