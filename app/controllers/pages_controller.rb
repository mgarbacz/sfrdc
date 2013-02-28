class PagesController < ApplicationController
  before_filter :authenticate_admin!, :only => :admin

  # Setting the page automatically
  def initialize_component(page)
    if admin_signed_in?
      @component = Component.new
      @component.page = page
    end
  end

  # Home page
  def home
    initialize_component('Home')
  end

  # About Us page
  def about_us
    initialize_component('About Us')
  end

  # Benefits page
  def benefits
    initialize_component('Benefits')
  end

  # Partnerships page
  def partnerships
    initialize_component('Partnerships')
  end

  # Contact Us page
  def contact_us
    initialize_component('Contact Us')
  end

  # Administration page
  def admin
  end
end
