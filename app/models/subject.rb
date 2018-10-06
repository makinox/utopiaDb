class Subject < ApplicationRecord
    validates :name, presence: true
    validates :grade, presence: true
end
