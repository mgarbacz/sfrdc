class Employee < ActiveRecord::Base
  attr_accessible :name, :role, :department, :bio, :avatar
  validates :name, :role, :department, :presence => true
  has_attached_file :avatar, 
                    :styles => { :regular => "300x300#", :thumb => "100x100#" }
end
