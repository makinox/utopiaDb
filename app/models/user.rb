class User < ApplicationRecord
  belongs_to :entity
  validates :name, presence: true
  validates :user, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :age, presence: true
  validates :rol, presence: true
  validates :grade, presence: true
  validates :entity_id, presence: true
end
