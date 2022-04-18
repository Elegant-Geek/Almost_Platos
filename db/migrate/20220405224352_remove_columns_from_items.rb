class RemoveColumnsFromItems < ActiveRecord::Migration[6.1]
  def change

    remove_column :items, :size, :text
  end
end
