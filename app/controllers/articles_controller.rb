class ArticlesController < ApplicationController
  def new
    
  end
  def create
    render plain: params[:article].inspect
  end
end

# ~> -:1:in `<main>': uninitialized constant ApplicationController (NameError)