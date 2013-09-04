class AddVenueD1e2ToWeddings < ActiveRecord::Migration
  def change
    add_column :weddings, :venue_d1e2, :string
  end
end
