class MainController < ApplicationController

  def index
  end

  def new
  end

  def search
    @movies = Movie.ransack(name_cont: params[:q]).result(distinct: true).limit(5)
    @directors = Director.ransack(name_cont: params[:q]).result(distinct: true).limit(5)

    respond_to do |format|
      format.html {}
      format.json {
        @movies = @movies.limit(5)
        @directors = @directors.limit(5)
      }
    end
  end

end
