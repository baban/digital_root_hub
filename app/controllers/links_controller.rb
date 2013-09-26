class LinksController < ApplicationController
  def index
    @list = Author.page( params[:page] ).order(:name_kana).per(20)
  end
end
