class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :blog_type
      t.string :external_link
      t.text :content

      t.timestamps null: false
    end
    add_index :blogs, :title
  end
end
