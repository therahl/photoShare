class WelcomeController < ApplicationController
  def index
    @albums = Album.all.order(id: :DESC).limit(25)
  end
end
