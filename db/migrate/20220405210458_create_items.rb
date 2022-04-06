class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :stars
      t.text :description
      t.date :found_on

      t.timestamps
    end
  end
end
