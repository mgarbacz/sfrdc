class PagesController < ApplicationController
before_filter :authenticate_admin!, :only => :admin

  # Home page
  def home
    @component = Component.new
  end

  # About Us page
  def about_us
  end

  # Benefits page
  def benefits
  end

  # Partnerships page
  def partnerships
  end

  # Contact Us page
  def contact_us
  end

  # Administration page
  def admin
  end
end
