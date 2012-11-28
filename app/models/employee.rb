class Employee < ActiveRecord::Base
  attr_accessible :name, :role, :department, :bio, :avatar,
                  :crop_x, :crop_y, :crop_w, :crop_h
  validates :name, :role, :department, :presence => true
  has_attached_file :avatar, :styles => { :original => '600x>', 
    :thumb => { geometry: '100x100#',:processors => [:cropper] } }

  after_update :reprocess_avatar, :if => :cropping?

  def cropping?
    !crop_x.blank? && !crop_y.blank? && !crop_w.blank? && !crop_h.blank?
  end

  private

  def reprocess_avatar
    crop_x = crop_x.to_i
    crop_y = crop_y.to_i
    crop_w = crop_w.to_i
    crop_h = crop_h.to_i
  end

end
