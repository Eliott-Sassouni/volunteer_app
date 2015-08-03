class Event < ActiveRecord::Base
  belongs_to :user
  validates :name, :description, :photo, presence: true
end
