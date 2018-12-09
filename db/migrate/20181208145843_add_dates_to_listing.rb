class AddDatesToListing < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :pick_up, :datetime
    add_column :listings, :drop_off, :datetime
  end
end
