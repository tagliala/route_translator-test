class Article < ActiveRecord::Base
  translates :title, :slug

  extend FriendlyId

  friendly_id :title, use: [:slugged, :globalize]
end
