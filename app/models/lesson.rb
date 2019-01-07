class Lesson < ApplicationRecord
  enum status: [:draft, :complete]
  belongs_to :user
  belongs_to :grade
  belongs_to :subject
  validates :title_content, presence: true
  default_scope -> { order(created_at: :desc) }
  scope :grade_id, -> (grade_id) { where grade_id: grade_id }
  scope :subject_id, -> (subject_id) { where subject_id: subject_id }
  scope :search, -> (search) { where("title_content LIKE :query", query: "%#{search}%") }
  scope :publish, -> { where status: :complete }
  scope :draft, -> { where status: :draft}
end
