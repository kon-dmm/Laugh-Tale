class AddressesController < ApplicationController
  def index
     @address = Address.new
     @addresses = Address.all
  end

  def create
    @address = Address.new(params_path)
    @address.customer_id = current_customer.id
    @address.save
    @addresses = Address.all
    render :index
  end

  def edit
    @address = Address.find(params[:id])
  end

  def destroy
    @address = Address.find(params[:id])
    @address.destroy
    redirect_to addresses_path
  end

  private

  def params_path
    params.require(:address).permit(:name, :postal_code, :address)
  end
end
