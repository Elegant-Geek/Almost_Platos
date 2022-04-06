class AddColumnsToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :brand, :text
    add_column :items, :size, :text
  end
end
