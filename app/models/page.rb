class Page < ApplicationRecord
  belongs_to :subject
  validates_presence_of :position, :visible, :subject_id
  validates_uniqueness_of :position, scope: :subject
  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 50, minimun: 4}
  validates :content, presence: true, length: {minimum: 10}
  
end
