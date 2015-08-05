class AddOrganizationToUser < ActiveRecord::Migration
  def change
    add_column :users, :organization, :boolean
  end
end
