class WelcomeController < ApplicationController
  def index
    @albums = Album.where(published).order(id: :DESC).limit(25)
  end
end
