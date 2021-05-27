class ArticlesController < ApplicationController

  def index
    response = HTTP.headers("X-Api-Key" => "SOMEKEY").get("https://newsapi.org/v2/everything?q=#{params[:search]}")
    render json: response.parse(:json)["articles"]
  end


end
