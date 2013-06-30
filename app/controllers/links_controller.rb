class LinksController < ApplicationController
  def index
    @list = Author.page( params[:page] )
  end
end
