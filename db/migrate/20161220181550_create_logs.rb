class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.integer :user_id
      t.date :date_played
      t.integer :opponent_id
      t.integer :your_score
      t.integer :their_score

      t.timestamps null: false
    end
  end
end
