class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :slug
      t.timestamps null: false
    end
    Article.create_translation_table! title: :string, slug: :string
  end
end
