class ArticlesController < ApplicationController
  def new
<<<<<<< HEAD
    @article = Article.new
  end

  def index
    @articles = Article.all
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  def edit
    @article = Article.find(params[:id])
=======
    
>>>>>>> d5d7224626639d727c7dab8af4b22115c1c7e246
  end
  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
    #render plain: params[:article].inspect
  end
  private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end

# ~> -:1:in `<main>': uninitialized constant ApplicationController (NameError)