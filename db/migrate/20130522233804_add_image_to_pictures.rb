class AddImageToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :image, :string
    remove_column :pictures, :avatar
  end
end
