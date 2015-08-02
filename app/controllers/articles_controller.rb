class ArticlesController < ApplicationController
  before_action :set_article, only: :show

  private

  def set_article
    @article = Article.friendly.find(params[:id])
  end
end
