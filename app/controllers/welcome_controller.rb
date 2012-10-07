class WelcomeController < ApplicationController
  def index
    @articles = Article.all
    @articles = @articles[0, 5] if @articles.size >= 5
  end

  def access
  end
end
