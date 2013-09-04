class AddDay2Event1ToWeddings < ActiveRecord::Migration
  def change
    add_column :weddings, :day2_event1, :string
  end
end
