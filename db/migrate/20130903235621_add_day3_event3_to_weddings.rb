class AddDay3Event3ToWeddings < ActiveRecord::Migration
  def change
    add_column :weddings, :day3_event3, :string
  end
end
