class User < ApplicationRecord
  enum status: { active: 0, inactive: 1 }

  validates :first_name, :last_name, :status, presence: true
end
