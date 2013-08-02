class CreateWeddings < ActiveRecord::Migration
  def change
    create_table :weddings do |t|
      t.string :url
      t.string :bridename
      t.string :groomname
      t.date :weddingdate
      t.string :weddingcity
      t.string :weddingstate

      t.timestamps
    end
  end
end
