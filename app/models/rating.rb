class Rating < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :value, presence: true
  validates :user_id, presence: true
  validates :responsable, presence: true
end
