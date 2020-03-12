class RemoveMemberIdFromGroups < ActiveRecord::Migration[5.2]
  def change
    remove_column :groups, :member_id, :remove_foreign_key
  end
end
