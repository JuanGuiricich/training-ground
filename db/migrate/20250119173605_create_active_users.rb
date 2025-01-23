class CreateActiveUsers < ActiveRecord::Migration[7.2]
  def change
    create_view :active_users
  end
end
