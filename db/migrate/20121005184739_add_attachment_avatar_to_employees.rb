class AddAttachmentAvatarToEmployees < ActiveRecord::Migration
  def self.up
    change_table :employees do |t|
      t.has_attached_file :avatar
    end
  end

  def self.down
    drop_attached_file :employees, :avatar
  end
end
