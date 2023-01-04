class AddColToFlatImage < ActiveRecord::Migration[7.0]
  def change
    add_column :flats, :image, :string
  end
end
