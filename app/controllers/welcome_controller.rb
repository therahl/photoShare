class WelcomeController < ApplicationController
  def index
    @albums = Album.where(public: true).order(id: :DESC).limit(25)
  end
end
