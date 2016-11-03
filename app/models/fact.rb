class Fact < ApplicationRecord
  belongs_to :author, class_name: "User", optional: true
  has_many :votes

  def vote(vote, user)
    new_vote = Vote.new(vote: vote, user: user)
    self.votes << new_vote
  end
end
