class Room < ApplicationRecord
  has_many :room_users
  has_many :users, through: :room_users
  has_many :messages

  validates :name, presence: true #ルーム名が空のときは保存できない
end
