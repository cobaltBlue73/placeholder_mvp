class Memory < ApplicationRecord
  belongs_to :user
  has_many :avatar_memories
  has_many :avatars, through: :avatar_memories
  has_one_attached :photo, dependent: :destroy

  def time_since_upload
    time_uploaded = self[:created_at]
    current_time = DateTime.now.to_time
    time_difference = ((current_time - time_uploaded).to_i) / 3600
    if time_difference > 24
      "#{(time_difference / 24).round} days" if time_difference > 48
      "#{(time_difference / 24).round} day"
    elsif time_difference < 1
      "#{time_difference * 60} mins"
    else
      "#{time_difference}hr"
    end
  end
end
