class AddVenueD3e3ToWeddings < ActiveRecord::Migration
  def change
    add_column :weddings, :venue_d3e3, :string
  end
end
