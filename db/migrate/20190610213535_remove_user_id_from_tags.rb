class RemoveUserIdFromTags < ActiveRecord::Migration[5.2]
  def change
    remove_column :tags, :user_id, :bigint
  end
end
