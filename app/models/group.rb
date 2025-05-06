class Group < ApplicationRecord
  has_many :group_sessions
  has_many :trainings, through: :group_sessions, source: :session, source_type: "Training"
end
