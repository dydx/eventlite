class AddEventToUser < ActiveRecord::Migration
  def change
    add_column :users, :event, :has_many
  end
end
