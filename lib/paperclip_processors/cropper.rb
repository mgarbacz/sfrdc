module Paperclip
  class Cropper < Thumbnail
    def transformation_command
      if crop_command
        # super returns an array, so need to join it to sub, then split
        crop_command + super.join(' ').sub(/ -crop \S+/, '').split(' ')
      else
        super
      end
    end

    def crop_command
      target = @attachment.instance
      if target.cropping?
        ["-crop", 
          "#{target.crop_w}x#{target.crop_h}+#{target.crop_x}+#{target.crop_y}"]
      end
    end
  end
end
