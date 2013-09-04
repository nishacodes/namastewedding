class AddDay1Event2ToWeddings < ActiveRecord::Migration
  def change
    add_column :weddings, :day1_event2, :string
  end
end
