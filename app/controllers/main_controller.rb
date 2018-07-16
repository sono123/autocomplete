class MainController < ApplicationController
  before_action :force_json, only: :search

  def index
  end

  def new
  end

  def search
    @movies = Movie.ransack(name_cont: params[:q]).result(distinct: true).limit(5)
    @directors = Director.ransack(name_cont: params[:q]).result(distinct: true).limit(5)
  end

  private

    def force_json
      request.format = :json
    end

end
