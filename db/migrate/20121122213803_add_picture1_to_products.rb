class AddPicture1ToProducts < ActiveRecord::Migration
  def change
  	  	    add_column :products, :picture1, :string
  end
end
