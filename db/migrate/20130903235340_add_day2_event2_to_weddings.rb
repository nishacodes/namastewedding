class AddDay2Event2ToWeddings < ActiveRecord::Migration
  def change
    add_column :weddings, :day2_event2, :string
  end
end
