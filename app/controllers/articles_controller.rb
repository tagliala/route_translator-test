class ArticlesController < ApplicationController
  before_action :set_article, only: :show

  private

  def set_article
    @article = Article.friendly.find(params[:id])
  end

  def localized_url_for
    case action_name
    when 'show'
      proc do |locale|
        I18n.with_locale(locale) do
          article_path(@article)
        end
      end
    else super
    end
  end
end
