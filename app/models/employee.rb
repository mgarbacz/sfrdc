class Employee < ActiveRecord::Base
  attr_accessible :name, :employee_type, :department, :bio, :avatar
  validates :name, :employee_type, :department, :presence => true
  has_attached_file :avatar, 
                    :styles => { :regular => "400x400>", :thumb => "100x100>" }
end
