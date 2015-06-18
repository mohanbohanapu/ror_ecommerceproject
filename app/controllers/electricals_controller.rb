class ElectricalsController < ApplicationController
  before_action :set_electrical, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @electricals = Electrical.all
    respond_with(@electricals)
  end

  def show
    respond_with(@electrical)
  end

  def new
    @electrical = Electrical.new
    respond_with(@electrical)
  end

  def edit
  end

  def create
    @electrical = Electrical.new(electrical_params)
    @electrical.save
    respond_with(@electrical)
  end

  def update
    @electrical.update(electrical_params)
    respond_with(@electrical)
  end

  def destroy
    @electrical.destroy
    respond_with(@electrical)
  end

  private
    def set_electrical
      @electrical = Electrical.find(params[:id])
    end

    def electrical_params
      params.require(:electrical).permit(:productid, :productname, :productdiscription,:avatar)
    end
end
