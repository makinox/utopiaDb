class Entity < ApplicationRecord
    has_many :users
    validates :name, presence: true
    validates :identity, presence: true
    validates :max, presence: true
    validates :responsable, presence: true
    validates :pass, presence: true
end
