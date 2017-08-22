class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :slug
      t.string :thubmnail
      t.text :content

      t.timestamps
    end
  end
end
