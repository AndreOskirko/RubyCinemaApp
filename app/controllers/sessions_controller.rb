class SessionsController < ApplicationController

    def index
      @sessions = Session.all
    end

    def show
      @session = Session.find(params[:id])
    end

    def new
      @session = Session.new
    end

    def create
      session = Session.create(session_params)
      redirect_to sessions_path
    end

    def edit
      @session = Session.find(params[:id])
    end

    def update
      @session = Session.find(params[:id])
      @session.update(session_params)

      redirect_to sessions_path(@session)
    end

    def destroy
      @session = Session.find(params[:id])
      @session.destroy

      redirect_to sessions_path
    end


    private

    def session_params
      params.require( :session).permit( :theatre,:film, :time)
    end
  end
