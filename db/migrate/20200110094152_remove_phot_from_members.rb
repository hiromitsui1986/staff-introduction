class RemovePhotFromMembers < ActiveRecord::Migration[5.2]
  def change
    remove_column :members, :photo, :text
  end
end
