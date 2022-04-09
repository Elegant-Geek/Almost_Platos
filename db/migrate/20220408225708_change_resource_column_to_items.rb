class ChangeResourceColumnToItems < ActiveRecord::Migration[6.1]
  def change
    change_column_default :items, :found_on, -> { 'CURRENT_TIMESTAMP' }
  end
end
