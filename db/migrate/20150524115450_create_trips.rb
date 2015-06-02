class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.belongs_to :user
      t.boolean :regular
      t.datetime :start_time, null: false
      t.datetime :end_time
      t.text :description
      t.timestamps null: false
    end

    add_index :trips, [:id, :user_id]
  end
end
