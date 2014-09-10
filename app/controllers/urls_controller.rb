class UrlsController < ApplicationController
  def index
  	@urls = Url.all
  end

  def new
  	@url = Url.new
  end

  def show
  	@url = Url.find(params[:id])
  end

  def create
  	if !params[:url].blank?
  		client = Bitly.client
  		@url = client.shorten(params[:url])
	end



  end
end
