class AddVenueD3e1ToWeddings < ActiveRecord::Migration
  def change
    add_column :weddings, :venue_d3e1, :string
  end
end
