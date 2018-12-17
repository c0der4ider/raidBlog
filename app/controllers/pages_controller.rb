class PagesController < ApplicationController

  def index
    flash[:notice] = "testing desde el back"
  end

end
