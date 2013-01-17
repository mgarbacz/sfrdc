class PageContent
  include Mongoid::Document

  field :title
  field :category

  attr_accessible :title, :category

  # :accessible is a variable used to store category specific dynamic fields
  # which allows us to set attr_accessible dynamically per category
  attr_accessor :accessible

  private
  # Overriding from ActiveModel::MassAssignmentSecurity so that extra variables
  # can be added dynamically to attr_accessible
  def mass_assignment_authorizer(role = :default)
    super + (accessible || [])
  end
end
