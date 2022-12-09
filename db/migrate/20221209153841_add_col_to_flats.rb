class AddColToFlats < ActiveRecord::Migration[7.0]
  def change
    add_column :flats, :picture, :string
  end
end
