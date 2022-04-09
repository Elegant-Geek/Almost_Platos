class AddResourceColumnToItems < ActiveRecord::Migration[6.1]
  #add resource to Items would be better
  def change
    add_reference :items, :user, foreign_key: true
  end
end
