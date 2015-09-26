class AddEventsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :events, :has_and_belongs_to_many
  end
end
