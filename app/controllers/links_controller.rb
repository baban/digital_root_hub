class LinksController < ApplicationController
  def index
    @list = Author.page( params[:page] ).per( 50 )
  end
end
