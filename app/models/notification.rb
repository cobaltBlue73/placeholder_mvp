class Notification < ApplicationRecord
  belongs_to :user

  def index
    @notifications = current_user.notifications
  end
end
