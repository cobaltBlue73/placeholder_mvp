class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :avatars, dependent: :destroy
  has_many :memories #, dependent: :destroy
  has_many :avatar_memories, through: :avatars
  has_many :friendships
  has_many :friends, through: :friendships, source: :user

  def add_friend(friend)
    self.friendships << Friendship.new(friend: friend)
  end

  def friends
    # self.friendships
    users_id = Friendship.where("friendships.friend_id=? OR friendships.user_id=?", self.id, self.id).pluck(:friend_id, :user_id).flatten
    users_id.delete(self.id)
    User.where(id: users_id)
  end
