class AddForeignKeys < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :document_tags, :tags
    add_foreign_key :document_tags, :documents
  end
end
