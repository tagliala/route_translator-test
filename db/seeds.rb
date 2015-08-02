# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

article = Article.create(title: 'English Title', slug: 'english-title')

I18n.with_locale(:it) do
  article.update_attributes title: 'Italian Title', slug: 'italian-title'
end
