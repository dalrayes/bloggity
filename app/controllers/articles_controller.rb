class ArticlesController < ApplicationController

	def new
		@article = Article.new
	end

	def index
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
	end

	def create
		@article = Article.new(article_params)
		if @article.valid?
			@article.save
		end
		redirect_to articles_path
	end

	def edit
		@article = Article.find(params[:id])
		edit_article_path(@article)
	end

	def update
		@article = Article.find(params[:id])
		@article.update_attributes(article_params)
		redirect_to articles_path
	end

	def destroy
		@article =Article.find(params[:id])
		@article.destroy
		redirect_to articles_path
	end

	private

	def article_params
		params.require(:article).permit(:title, :body)
	end


end
