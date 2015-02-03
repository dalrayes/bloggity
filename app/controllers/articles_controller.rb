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
end