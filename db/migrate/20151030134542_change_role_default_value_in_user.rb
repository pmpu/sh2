class ChangeRoleDefaultValueInUser < ActiveRecord::Migration
  def change
    change_column_default :users, :role, :simple
  end
end
