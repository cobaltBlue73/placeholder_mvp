class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :avatars, dependent: :destroy
  has_many :memories #, dependent: :destroy
  has_many :avatar_memories, through: :avatars
end
