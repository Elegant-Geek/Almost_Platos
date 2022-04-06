class ChangeColumnToItems < ActiveRecord::Migration[6.1]
  def change
    change_column :items, :found_on, :datetime, :default => Date.today
  end
end
