class SearchController < ApplicationController
  
  before_filter :search_models
  
  def search_models
    @posts_search = Post.all
  end
  
  def result
    @result = params[:search_text]
    @posts = eval(params[:param_posts]).where('created_at >= :years_ago', :years_ago => Time.now - 1.years).where("title like ?", "%#{params[:search_text]}%").page(params[:page]).per(10)
  end
end
