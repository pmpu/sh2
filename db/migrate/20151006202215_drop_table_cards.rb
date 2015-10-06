class DropTableCards < ActiveRecord::Migration
  def change
    if ActiveRecord::Base.connection.table_exists? 'cards'
      drop_table :cards
  end
end
