class DocumentTag < ApplicationRecord
  belongs_to :tag
  belongs_to :document
  validates_uniqueness_of :document_id, scope: :tag_id
  # validates :document_id, uniqueness: true
  # validates :tag_id, uniqueness: true
end
