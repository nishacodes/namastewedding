class AddDay3Event2ToWeddings < ActiveRecord::Migration
  def change
    add_column :weddings, :day3_event2, :string
  end
end
