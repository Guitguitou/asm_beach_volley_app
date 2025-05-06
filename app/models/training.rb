class Training < Session
  has_many :group_sessions
  has_many :groups, through: :group_sessions
end
