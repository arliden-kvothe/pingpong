class Log < ActiveRecord::Base
  belongs_to :user
  validates :date_played, :user_id, :opponent_id, :your_score, :their_score, :presence => true
end
