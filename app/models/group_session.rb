class GroupSession < ApplicationRecord
  belongs_to :group
  belongs_to :session

  validate :only_training_allowed

  private

  def only_training_allowed
    errors.add(:session, "doit être un Training") unless session.is_a?(Training)
  end
end
