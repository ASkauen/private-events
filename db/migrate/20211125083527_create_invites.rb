class CreateInvites < ActiveRecord::Migration[6.1]
  def change
    create_table :invites do |t|
      t.integer :sender_id, null: false
      t.integer :event_id, null: false
      t.integer :recipient_id, null: false
      t.timestamps
    end
  end
end
