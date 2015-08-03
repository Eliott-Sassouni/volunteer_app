class AddAgeToUser < ActiveRecord::Migration
  def change
    add_column :users, :age, :integer
    add_column :users, :full_name, :string
    add_column :users, :photo, :string
    add_column :users, :organization, :boolean
  end
end
