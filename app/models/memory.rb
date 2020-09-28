class Memory < ApplicationRecord
  belongs_to :user
  has_many :avatar_memories, dependent: :destroy
  has_many :avatars, through: :avatar_memories
  has_one_attached :photo, dependent: :destroy
end
