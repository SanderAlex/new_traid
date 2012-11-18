class Product < ActiveRecord::Base
	attr_accessible :avatar, :name, :description, :section, :subsection
	validates :name, :presence => true
	validates :section, :presence => true
	validates :subsection, :presence => true

	mount_uploader :avatar, AvatarUploader

def self.search(search)
  search_condition = "%" + search + "%"
  find(:all, :conditions => ['name LIKE ? OR description LIKE ?', search_condition, search_condition])
end

end