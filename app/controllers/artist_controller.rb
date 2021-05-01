class ArtistController < ApplicationController

  def new 
    @artist = Artist.new 
  end 

  def create 
    @artist = Artist.new(artist_params(:name,:bio))
    @artist.save
    redirect_to artist_path(@artist)

  end

 def show 
     @artist =  set_artist
end 

def edit 
   @artist = set_artist
end

def update 
   @artist = set_artist
   @artist.update(artist_params(:name,:bio))
   @artist.save
   redirect_to artist_path(@artist)
end 


def set_artist
   @artist = Artist.find(params[:id])
end


def artist_params(*args)
  params.require(:arist).permit(*args)
end

end
