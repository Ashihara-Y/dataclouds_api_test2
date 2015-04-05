class WdiFactsController < ApplicationController
  def show
    @article = WdiFact.where(country_code: params[:country_code])
    render :json => @article, root: false
  end
end
