class Note < ApplicationRecord
  belongs_to :subject
  belongs_to :user
  validates :title, presence: true
  validates :value, presence: true
  validates :observation, presence: true
  validates :subject_id, presence: true
  validates :user_id, presence: true
end
