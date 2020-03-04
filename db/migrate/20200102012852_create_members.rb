class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string       :name
      t.string       :affilition
      t.string       :birthplace
      t.date         :birthday
      t.string       :hobby
      t.text         :message
      
      t.timestamps   null: true
    end
  end
end
