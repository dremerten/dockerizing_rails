class Tag < ApplicationRecord
  has_many :document_tags, dependent: :destroy
  has_many :documents, through: :document_tags
  validates :name, presence: true, length: { minimum: 3, maximum: 25 }
  validates :name, uniqueness: true
end
