class Api::V1::ArticlesController < ApplicationController
  def index
    articles = Article.all
    render json: articles, status:200
  end

  def show
    article = Article.find(params[:id])
    if article 
      render json: article, status: 200
    else
      render json:{
        error: "No Data Found"
      }
    end
  end

  def create
    article = Article.new(
      atri_params
    )
    if article.save
      render json: article, status:200
    else
      render json:{
        error: "Error Creating..."
      }
    end
  end

  def update
    article = Article.find(params[:id])
    if article
      article.update(title: params[:title],body: params[:body],author: params[:author])
      render json: "Article record updated"
    else
      render json: {
        error: "NO DATA FOUND"
      }
    end
  end

  def destroy
    article = Article.find(params[:id])
    if article
      article.destroy
      render json: "Article deleted successfully"
    else
      render json: {
        error: "NO DATA FOUND"
      }
    end
  end

  private
  def atri_params
    params.require(:article).permit(
      :title,
      :body,
      :author
    )
  end
end
