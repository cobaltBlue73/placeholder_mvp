class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: "User"

  validates :user, uniqueness: { scope: :friend }
  validates :friend, uniqueness: { scope: :user }

  after_create :all_happy

  private

  def all_happy
    unless friend.friends.include?(user)
      friend.friends << user
    end
  end
end
