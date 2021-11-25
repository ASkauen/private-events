class CreateInvites < ActiveRecord::Migration[6.1]
  def change
    create_table :invites do |t|
      t.references :sender, foreign_key: true
      t.references :event, foreign_key: true
      t.references :recipient, foreign_key: true
      t.timestamps
    end
  end
end
