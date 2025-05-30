# == Schema Information
#
# Table name: boards
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Board < ApplicationRecord
  validates(:name, presence: true, uniqueness: true)

  has_many(:posts, class_name: "Post", foreign_key: "board_id", primary_key: "id")
  belongs_to(:user, class_name: "User", foreign_key: "user_id", primary_key: "id")
end
