class AddVenueD3e2ToWeddings < ActiveRecord::Migration
  def change
    add_column :weddings, :venue_d3e2, :string
  end
end
