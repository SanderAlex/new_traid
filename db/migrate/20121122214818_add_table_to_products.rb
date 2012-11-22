class AddTableToProducts < ActiveRecord::Migration
  def change
  	  	add_column :products, :table, :text
  end
end
