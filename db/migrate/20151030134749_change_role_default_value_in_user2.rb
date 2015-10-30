class ChangeRoleDefaultValueInUser2 < ActiveRecord::Migration
  def change
    change_column_default :users, :role, 0
  end
end
