class RenameMyTableArticlesToPosts < ActiveRecord::Migration
  def change
      rename_table :articles, :posts
  end
end
