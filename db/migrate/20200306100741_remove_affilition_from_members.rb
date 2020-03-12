class RemoveAffilitionFromMembers < ActiveRecord::Migration[5.2]
  def change
    remove_column :members, :affilition, :string
  end
end
