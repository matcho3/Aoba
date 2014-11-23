class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.datetime :reserved_at
      t.integer :operation_id
      t.integer :body_part
      t.integer :first_time
      t.integer :reservation_id
      t.string :URL

      t.timestamps
    end
  end
end
