
class Answer < ApplicationRecord
  validates :body, presence: true

  belongs_to :question
  belongs_to :user
  delegate :first_name, to: :user, allow_nil: true, prefix: true

end
