class CreatePostGalleries < ActiveRecord::Migration
  def change
    create_table :post_galleries do |t|
      t.references :post

      t.timestamps null: false
    end
  end
end
