class DeleteColPicture < ActiveRecord::Migration[7.0]
  def change
    remove_column :flats, :picture
  end
end
