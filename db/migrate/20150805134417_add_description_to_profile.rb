class AddDescriptionToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :description, :string
  end
end
