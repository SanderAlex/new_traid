class Product < ActiveRecord::Base
	attr_accessible :avatar, :name, :description, :section, :subsection, :picture, :picture1, :table
	validates :name, :presence => true
	validates :section, :presence => true

	mount_uploader :avatar, AvatarUploader
	mount_uploader :picture, AvatarUploader
	mount_uploader :picture1, AvatarUploader

def self.search(search)
  search_condition = "%" + search + "%"
  find(:all, :conditions => ['name LIKE ? OR description LIKE ?', search_condition, search_condition])
end

end