class ReadymadesController < ApplicationController
  before_action :set_readymade, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @readymades = Readymade.all
    respond_with(@readymades)
  end

  def show
    respond_with(@readymade)
  end

  def new
    @readymade = Readymade.new
    respond_with(@readymade)
  end

  def edit
  end

  def create
    @readymade = Readymade.new(readymade_params)
    @readymade.save
    respond_with(@readymade)
  end

  def update
    @readymade.update(readymade_params)
    respond_with(@readymade)
  end

  def destroy
    @readymade.destroy
    respond_with(@readymade)
  end

  private
    def set_readymade
      @readymade = Readymade.find(params[:id])
    end

    def readymade_params
      params.require(:readymade).permit(:productid, :productname, :productdiscription,:avatar)
    end
end
