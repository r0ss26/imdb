class MoviesController < ApplicationController
  def index
    @movies = session[:movies]
    # puts @movies
  end

  def show
    @movie = session[:movies][params[:id].to_i - 1]
  end

  def create
    if session[:movies] == nil
      session[:movies] = []
    end
    
    session[:movies].push(params[:movie])

    puts "hello: #{session}"

    redirect_to movie_path(session[:movies].length - 1)
  end

  def update
    puts "session #{session[:movies]}"
    @movie = session[:movies][params[:id].to_i - 1]
    puts "movie #{@movie}"
    @movie["title"] = params[:movie]["title"]
    @movie["rating"] = params[:movie]["rating"]

    redirect_to movie_path(params[:id])
  end

  def destroy
  end

  def new
  end

  def edit
  end
end