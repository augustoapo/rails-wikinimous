class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy]

    def index
      @articles = Article.all
    end
  
    def show
      # set_restaurant - Substituido pelo before_action
    end
  
    def new
      @article = Article.new
    end
  
    def create
      # Cria um novo restaurante
      @article = Article.new(article_params)
      @article.save
      redirect_to article_path(@article)
    end
  
    def edit
      # set_restaurant - Substituido pelo before_action
    end
  
    def update
      # set_restaurant - Substituido pelo before_action
      @article.update(article_params)
      redirect_to article_path(@article)
    end
  
    def destroy
      @article.destroy
      redirect_to articles_path
    end
  
    private
  
    def set_article
      @article = Article.find(params[:id])
    end
  
    def article_params
      params.require(:article).permit(:title, :content)
    end
end
