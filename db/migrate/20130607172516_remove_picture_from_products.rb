class RemovePictureFromProducts < ActiveRecord::Migration
  def up
    remove_column :products, :picture
    remove_column :products, :picture1
    remove_column :products, :table
  end
end
