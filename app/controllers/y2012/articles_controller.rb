# -*- coding: utf-8 -*-
module Y2012
class ArticlesController < ApplicationController
  layout "y2012/application"

  def index
    @articles = Article.all
  end

  def show
    case params[:id]
    when 'lt'
      @article = Article.find_by_title('ライトニングトークス発表者募集します')
    else
      @article = Article.find(params[:id])
    end
  end
end
end

