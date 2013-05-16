class CreateInviterequests < ActiveRecord::Migration
  def change
    create_table :inviterequests do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
