class AddVenueD2e2ToWeddings < ActiveRecord::Migration
  def change
    add_column :weddings, :venue_d2e2, :string
  end
end
