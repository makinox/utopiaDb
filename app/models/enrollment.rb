class Enrollment < ApplicationRecord
  belongs_to :users
  belongs_to :subjects
end
