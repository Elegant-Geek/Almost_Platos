class RemoveImageFileNameFromItems < ActiveRecord::Migration[6.1]
  def change
    remove_column :items, :image_file_name, :string
  end
end
