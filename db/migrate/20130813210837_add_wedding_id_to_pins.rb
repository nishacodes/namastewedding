class AddWeddingIdToPins < ActiveRecord::Migration
  def change
    add_column :pins, :wedding_id, :integer
    add_index :pins, :wedding_id
  end
end
