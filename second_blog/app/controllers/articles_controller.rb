class ArticlesController < ApplicationController
	before_action :logged_in?, only: [:index]

	def index
		@articles = Article.all
		current_user #sets @current_user
		render :index
	end

	def new
		@article = Article.new
		render :new
	end

	def create 
		@article = Article.create(article_params)
		redirect_to '/articles'
	end

	def show
		@article = Article.find(params[:id])
		render :show
	end
	
	def destroy
		id = params[:id]
		article = Article.find(id)
		article.destroy
		redirect_to "/articles"
	end
	
private
	def article_params
		params.require(:article).permit(:title, :content)
	end
end
