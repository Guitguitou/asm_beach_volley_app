class Player < ApplicationRecord
  belongs_to :user, optional: true

  validates :first_name, :last_name, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
