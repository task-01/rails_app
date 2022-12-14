class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :roomName
      t.string :roomAddress
      t.text :roomIntroduction
      t.integer :roomMoney
      t.integer :user_id


      t.timestamps
    end
  end
end
