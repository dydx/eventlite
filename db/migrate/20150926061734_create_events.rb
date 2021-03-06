class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :location
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
