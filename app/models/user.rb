class User < ApplicationRecord
  belongs_to :entity
  has_and_belongs_to_many :subjects
end
