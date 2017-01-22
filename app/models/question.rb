class Question < ApplicationRecord
  validates :title, presence: true, length: { minimum: 6 }
  validates :description, presence: true

  belongs_to :user
  has_many :answers, dependent: :destroy

  def self.search(search)
    where("title LIKE ?", "%#{search}%")
    where("description LIKE ?", "%#{search}%")
  end
end
