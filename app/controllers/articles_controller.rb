# -*- coding: utf-8 -*-
class ArticlesController < ApplicationController
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
