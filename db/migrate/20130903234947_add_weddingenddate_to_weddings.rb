class AddWeddingenddateToWeddings < ActiveRecord::Migration
  def change
    add_column :weddings, :weddingenddate, :date
  end
end
