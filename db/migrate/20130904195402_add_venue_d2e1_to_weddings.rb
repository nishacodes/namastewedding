class AddVenueD2e1ToWeddings < ActiveRecord::Migration
  def change
    add_column :weddings, :venue_d2e1, :string
  end
end
