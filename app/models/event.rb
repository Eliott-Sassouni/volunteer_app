class Event < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  validates :name, :description, :photo, presence: true
end
