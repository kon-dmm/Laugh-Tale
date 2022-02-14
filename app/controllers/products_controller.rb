class ProductsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
  end

  def create
     @item = Item.new(params_path)
     @item.save
     redirect_to product_path(@item.id)

  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @customer=Customer.find(params[:id])
  end
  def update
    @customer.find(params[:id])
    @customer.update(params_path)
  end
  private

  def params_path
     params.require(:item).permit(:name, :introduction)
  end
end
