class AddPhotoToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :photo, :text
  end
end
