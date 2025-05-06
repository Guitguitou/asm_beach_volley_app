class CreateGroupSessions < ActiveRecord::Migration[8.0]
  def change
    create_table :group_sessions do |t|
      t.references :group, null: false, foreign_key: true
      t.references :session, null: false, foreign_key: true

      t.timestamps
    end
  end
end
