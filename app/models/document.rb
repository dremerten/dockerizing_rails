# frozen_string_literal: true

class Document < ApplicationRecord
  has_many :document_tags, dependent: :destroy
  has_many :tags, through: :document_tags
  belongs_to :user
  validates :title, presence: true, length: { minimum: 1, maximum: 50 }
  validates :body, presence: true

  def tag_names
    tags.map(&:name).join(',')
  end
end
