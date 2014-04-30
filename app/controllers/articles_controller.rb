class ArticlesController < ApplicationController
	def new
		@articles = Article.all
		@article = Article.new
	end

	def create
	  @article = Article.new(article_params)
	 
	  if @article.save
	  	@articles = Article.all
		@article = Article.new
	  	render 'index'
	  else
	  	render 'new'
	  end
	end

	def show
	  @article = Article.find(params[:id])
	end

	def index
		@articles = Article.all
		@article = Article.new
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])

		if @article.update(article_params)
			redirect_to @article
		else
			render 'edit'
		end
	end

	def destroy
		@article = Article.find(params[:id])
		if @article.destroy
			redirect_to articles_path
		else
			render 'edit'
		end
	end

	def sweet
		@article = Article.find_by(id: params[:id])
    
	    if @article
	      @article.sweet = @article.sweet.to_i + 1
	      if @article.save
	        redirect_to articles_path
	      end
	    end
	end

	def sour
		@article = Article.find_by(id: params[:id])
    
	    if @article
	      @article.sour = @article.sour.to_i + 1
	      if @article.save
	        redirect_to articles_path
	      end
	    end
	end
	 
	private
	  def article_params
	    params.require(:article).permit(:author, :text)
	  end
end
