class AddAccountReferenceToListings < ActiveRecord::Migration[5.2]
  def change
    add_reference :listings, :account
  end
end
