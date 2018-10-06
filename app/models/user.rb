class User < ApplicationRecord
  belongs_to :entity
  # has_and_belongs_to_many :subjects
  validates :name, presence: true
  validates :user, presence: true
  validates :identity, presence: true
  validates :age, presence: true
  validates :rol, presence: true
  validates :grade, presence: true
  validates :entity_id, presence: true
end
