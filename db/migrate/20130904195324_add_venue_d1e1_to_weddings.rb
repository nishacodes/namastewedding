class AddVenueD1e1ToWeddings < ActiveRecord::Migration
  def change
    add_column :weddings, :venue_d1e1, :string
  end
end
