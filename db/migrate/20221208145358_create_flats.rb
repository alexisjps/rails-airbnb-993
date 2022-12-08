class CreateFlats < ActiveRecord::Migration[7.0]
  def change
    create_table :flats do |t|
      t.string :name
      t.string :address
      t.string :longitude
      t.string :latitude
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
