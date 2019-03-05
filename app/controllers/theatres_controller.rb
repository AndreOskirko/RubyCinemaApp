class TheatresController < ApplicationController
  def index
    @theatres = Theatre.all
  end

  def show
    @theatre = Theatre.find(params[:id])
  end

  def new
    @theatre = Theatre.new
  end

  def create
    theatre = Theatre.create(theatre_params)
    redirect_to theatres_path
  end

  def edit
    @theatre = Theatre.find(params[:id])
  end

  def update
    @theatre = Theatre.find(params[:id])
    @theatre.update(theatre_params)

    redirect_to theatre_path(@theatre)
  end

  def destroy
    @theatre = Theatre.find(params[:id])
    @theatre.destroy

    redirect_to theatres_path
  end


  private

  def theatre_params
    params.require( :theatre).permit( :t_title,:t_body)
  end
end
