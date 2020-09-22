class Avatar < ApplicationRecord
  belongs_to :user
  has_many :avatar_memories, dependent: :destroy
  has_many :memories, through: :avatar_memories
end
