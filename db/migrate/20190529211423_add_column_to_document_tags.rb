class AddColumnToDocumentTags < ActiveRecord::Migration[5.2]
  def change
    add_column :document_tags, :document_id, :integer
    add_column :document_tags, :tag_id, :integer
  end
end
