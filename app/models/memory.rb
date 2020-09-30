class Memory < ApplicationRecord
  belongs_to :user

  has_many :avatar_memories, dependent: :destroy
  has_many :avatars, through: :avatar_memories
  has_many :comments, dependent: :destroy

  has_one_attached :photo, dependent: :destroy

  def time_since_upload
    time_uploaded = self[:created_at]
    current_time = DateTime.now.to_time
    time_difference = ((current_time - time_uploaded).to_i) / 60
    if (time_difference / 60 ) > 24
      "#{(time_difference / 24).round} days" if (time_difference / 60 ) > 48
      "#{((time_difference / 60) / 24).round} day"
    elsif (time_difference / 60) < 1
      "#{time_difference} mins"
    else
      "#{time_difference / 60}hr"
    end
  end
end
