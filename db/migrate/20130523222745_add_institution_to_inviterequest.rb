class AddInstitutionToInviterequest < ActiveRecord::Migration
  def change
    add_column :inviterequests, :institution, :string
  end
end
