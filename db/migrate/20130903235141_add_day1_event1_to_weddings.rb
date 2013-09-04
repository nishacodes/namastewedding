class AddDay1Event1ToWeddings < ActiveRecord::Migration
  def change
    add_column :weddings, :day1_event1, :string
  end
end
