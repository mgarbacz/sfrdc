class Job < ActiveRecord::Base
  attr_accessible :apply, :apply_by, :department, :description, :position
  validates :department, :position
end
