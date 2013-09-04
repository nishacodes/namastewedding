class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :vendorcity
      t.string :vendorstate
      t.string :category

      t.timestamps
    end
  end
end
