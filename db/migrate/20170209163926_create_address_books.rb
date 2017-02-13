class CreateAddressBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :address_books do |t|
      t.string :phone
      t.string :street
      t.string :post
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
