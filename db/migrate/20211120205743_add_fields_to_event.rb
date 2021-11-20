class AddFieldsToEvent < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :title, :string
    add_column :events, :desc, :string
    add_column :events, :date, :string
  end
end
