class AddUsersToEvents < ActiveRecord::Migration
  def change
    add_column :events, :users, :has_and_belongs_to_many
  end
end
