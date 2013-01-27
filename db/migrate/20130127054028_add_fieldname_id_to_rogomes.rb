class AddFieldnameIdToRogomes < ActiveRecord::Migration
  def change
    add_column :rogomes, :status, :string
  end
end
