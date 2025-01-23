class ActiveUser < ApplicationRecord
  enum status: { active: 0, inactive: 1 }
  def readonly?
    true
  end
end
