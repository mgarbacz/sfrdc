class Employee < ActiveRecord::Base
  attr_accessible :name, :role, :department, :bio, :avatar,
                  :crop_x, :crop_y, :crop_w, :crop_h
  validates :name, :role, :department, :presence => true
  has_attached_file :avatar, :styles => { :regular => '600x>', 
                                          :thumb => '100x100#' },
                    :processors => [:cropper]

  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  after_update :reprocess_avatar, :if => :cropping?

  def cropping?
    !crop_x.blank? && !crop_y.blank? && !crop_w.blank? && !crop_h.blank?
  end

  private

  def reprocess_avatar
    original_geometry = Paperclip::Geometry.from_file(avatar.path(:original))
    regular_geometry = Paperclip::Geometry.from_file(avatar.path(:regular))
    ratio = original_geometry.width / regular_geometry.width
    crop_x = crop_x.to_i * ratio
    crop_y = crop_y.to_i * ratio
    crop_w = crop_w.to_i * ratio
    crop_h = crop_h.to_i * ratio
    #self.avatar.reprocess!
  end

end
