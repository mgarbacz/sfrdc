class Employee < ActiveRecord::Base
  attr_accessible :bio, :department, :name, :type
end
