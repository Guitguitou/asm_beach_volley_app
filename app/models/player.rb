class Player < ApplicationRecord
  belongs_to :user, optional: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
