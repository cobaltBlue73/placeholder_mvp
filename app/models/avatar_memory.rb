class AvatarMemory < ApplicationRecord
  belongs_to :avatar
  belongs_to :memory
  enum status: %i[unread read]
end
