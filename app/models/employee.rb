require 'RMagick'

class Employee < ActiveRecord::Base
  attr_accessible :name, :role, :department, :bio, :avatar, :x1, :y1, :width, :height
  validates :name, :role, :department, :presence => true
  has_attached_file :avatar, 
                    :styles => { :regular => "300x300#", :thumb => "100x100#" }

  attr_accessor :x1, :y1, :width, :height

  def update_attributes(att)
    original_img = Magick::ImageList.new(self.avatar.path(:original))
    regular_img = Magick::ImageList.new(self.avatar.path(:regular))
    thumb_img = Magick::ImageList.new(self.avatar.path(:thumb))

    args = [ att[:x1], att[:y1], att[:width], att[:height] ]
    args = args.collect { |a| a.to_i }

    regular_img.crop!(*args)
    regular_img.write(self.avatar.path(:regular))

    thumb_img.crop!(*args)
    thumb_img.write(self.avatar.path(:thumb))

    # This line remakes reg and thumb, so need to change original
    self.avatar.reprocess!
    self.save
    
    super(att)
  end
end
