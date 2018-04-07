class AddUserIdToDeusts < ActiveRecord::Migration[5.0]
  def change
    add_column :deusts, :user_id, :integer
  end
end
