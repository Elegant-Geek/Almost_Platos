class ChangeColumnToBrands < ActiveRecord::Migration[6.1]
  def change
    change_column_default(:brands, :name, from: "unknown", to: nil)
  end
end
