class AddMoreFieldsToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :image_file_name, :string, default: "placeholder-2.png"
    change_column :items, :found_on, :datetime, :default => DateTime.now
  end
end
