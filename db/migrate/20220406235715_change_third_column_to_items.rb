class ChangeThirdColumnToItems < ActiveRecord::Migration[6.1]
  def change
    change_column :items, :flair, :text, :default => "no flair"
  end
end
