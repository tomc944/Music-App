class BandsController < ApplicationController

  def index
    @bands = Band.all
    render :index
  end

  def create
    @band = Band.new(play_that_funky_music)
    if @band.save
      redirect_to band_path(@band)
    else
      flash.now[:errors] = @band.errors.full_messages
      render :new
    end
  end

  def new
    @band = Band.new
    render :new
  end

  def edit
  end

  def show
    @band = Band.find_by(params[:id])
    render :show
  end

  def update
  end

  def destroy
  end

  private
  def play_that_funky_music
    params.require(:band).permit(:name)
  end
end
