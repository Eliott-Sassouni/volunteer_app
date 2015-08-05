class Profile < ActiveRecord::Base
  belongs_to :user
  validates :full_name, :age, presence: true
end
