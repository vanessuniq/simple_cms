class Subject < ApplicationRecord
    has_many :pages
    validates :name, :position, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 50}
    
end
