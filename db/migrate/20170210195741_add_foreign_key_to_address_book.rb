class AddForeignKeyToAddressBook < ActiveRecord::Migration[5.0]
  def change
    add_column :address_books, :user_id, :integer
  end
end
