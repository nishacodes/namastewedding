class AddDay3Event1ToWeddings < ActiveRecord::Migration
  def change
    add_column :weddings, :day3_event1, :string
  end
end
