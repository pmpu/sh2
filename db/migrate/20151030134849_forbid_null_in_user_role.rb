class ForbidNullInUserRole < ActiveRecord::Migration
  def change
    User.update_all(:role => 0)
    change_column_null :users, :role, false
  end
end
