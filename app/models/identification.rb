class Identification < ApplicationRecord
    belongs_to :user
    validates :register_number, presence: true,
                uniqueness: {case_sensitive: false}
    validates :user_id, uniqueness: true
end