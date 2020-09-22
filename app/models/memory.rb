class Memory < ApplicationRecord
  belongs_to :user
  has_many :avatar_memories
  has_many :avatars, through: :avatar_memories
end
