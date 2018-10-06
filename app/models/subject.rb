class Subject < ApplicationRecord
    validates :name, presence: true
    validates :grade, presence: true
    has_and_belongs_to_many :users
end
