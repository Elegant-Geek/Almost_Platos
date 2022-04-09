class RemoveDefaultDateToItems < ActiveRecord::Migration[6.1]
  CREATE_TIMESTAMP = 'DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP'
  def change
    change_column :items, :found_on, CREATE_TIMESTAMP
  end
end


