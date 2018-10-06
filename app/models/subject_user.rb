class SubjectUser < ApplicationRecord
    validates :user_id, presence: true
    validates :subject_id, presence: true
end
