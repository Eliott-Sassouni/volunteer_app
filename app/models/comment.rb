class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  validates :commenter, :comment, presence: true
end
