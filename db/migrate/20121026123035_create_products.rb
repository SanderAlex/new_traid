class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :section
      t.string :subsection

      t.timestamps

    end
  end
end
