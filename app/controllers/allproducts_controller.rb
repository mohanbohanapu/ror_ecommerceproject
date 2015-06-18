class AllproductsController < ApplicationController
  before_action :set_allproduct, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @allproducts = Allproduct.all
    respond_with(@allproducts)
  end

  def show
    respond_with(@allproduct)
  end

  def new
    @allproduct = Allproduct.new
    respond_with(@allproduct)
  end

  def edit
  end

  def create
    @allproduct = Allproduct.new(allproduct_params)
    @allproduct.save
    respond_with(@allproduct)
  end

  def update
    @allproduct.update(allproduct_params)
    respond_with(@allproduct)
  end

  def destroy
    @allproduct.destroy
    respond_with(@allproduct)
  end

  private
    def set_allproduct
      @allproduct = Allproduct.find(params[:id])
    end

    def allproduct_params
      params.require(:allproduct).permit(:productid, :productname, :productdiscription,:avatar)
    end
end
