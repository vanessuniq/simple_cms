class Subject < ApplicationRecord
    has_many :pages
    validates :name, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 50, minimum: 4}
    validates_presence_of :position, on: :create, message: "can't be blank"
    
end
