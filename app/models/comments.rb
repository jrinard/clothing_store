class Comment < ApplicationRecord
  belongs_to :clothing
  belongs_to :user
  # acts_as_votable

  validates :content, :presence => true
end
