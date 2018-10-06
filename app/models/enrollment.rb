class Enrollment < ApplicationRecord
  belongs_to :users
  belongs_to :subjects
  # validates :users_id, presence: true
  # validates :subjects_id, presence: true
end
