class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :avatars, dependent: :destroy
  has_many :memories, dependent: :destroy
  has_many :friendships, dependent: :destroy

  has_many :avatar_memories, through: :avatars
  has_many :friends, through: :friendships, source: :friend

  has_many :comments, dependent: :destroy

  def my_notifications
    AvatarMemory.where(avatar: self.avatars.first).order('created_at DESC')
  end
end
