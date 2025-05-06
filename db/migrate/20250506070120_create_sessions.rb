class CreateSessions < ActiveRecord::Migration[8.0]
  def change
    create_table :sessions do |t|
      t.string :type
      t.datetime :starts_at
      t.string :terrain
      t.integer :capacity

      t.timestamps
    end
  end
end
