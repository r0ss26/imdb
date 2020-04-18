class MoviesController < ApplicationController
  def index
    @movies = session[:movies]
  end

  def show
    @movie = session[:movies][params[:id].to_i - 1]
  end

  def create
    if session[:movies] == nil
      session[:movies] = []
    end
    
    session[:movies].push(params[:movie])
    redirect_to movie_path(session[:movies].length - 1)
  end

  def update
    @movie = session[:movies][params[:id].to_i - 1]
    @movie["title"] = params[:movie]["title"]
    @movie["rating"] = params[:movie]["rating"]

    redirect_to movie_path(params[:id])
  end

  def destroy
    session[:movies].delete_at(params[:id].to_i - 1)
    redirect_to movies_path
  end

  def new
  end

  def edit
  end
end