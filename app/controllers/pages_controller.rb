class PagesController < ApplicationController
  def home
    @title = 'Home'
    @articles = Article.all.limit(3).reverse
  end
end
