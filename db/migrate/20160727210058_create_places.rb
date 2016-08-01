class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :website
      t.float :lat
      t.float :lng
      t.string :category

      t.timestamps
    end
  end
end
