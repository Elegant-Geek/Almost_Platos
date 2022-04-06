class ChangeAnotherColumnToItems < ActiveRecord::Migration[6.1]
  def change
    change_column :items, :found_on, :date, :default => Date.today
  end
end
