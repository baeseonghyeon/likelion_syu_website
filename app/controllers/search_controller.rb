class SearchController < ApplicationController
  
  before_filter :search_models
  
  def search_models
    @posts_search = Post.all
  end
  
  def result
    @result = params[:search_text]
    @posts_count = eval(params[:param_posts]).where('created_at >= :years_ago', :years_ago => Time.now - 1.years).where("title ILIKE ?", "%#{params[:search_text]}%")
    @posts = eval(params[:param_posts]).where('created_at >= :years_ago', :years_ago => Time.now - 1.years).where("title ILIKE ?", "%#{params[:search_text]}%").order("created_at DESC").page(params[:page]).per(10)
  end
end
