class Identification < ApplicationRecord
    belongs_to :user
    validates :register_number, presence: true,
                uniqueness: {case_sensitive: false}
    has_many :articles, dependent: :destroy
end