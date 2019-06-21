class CreateDocumentTags < ActiveRecord::Migration[5.2]
  def change
    create_table :document_tags, &:timestamps
  end
end
