class ProductsController < ApplicationController
  
  def index
  	@products = Product.all
  end

  def newp
  	@product = Product.new
  end

  def show
  	@product = Product.find(params[:id])
  end

  def create
  	@product = Product.new(product_params)
  	if @product.save
  		redirect_to products_path, notice: "product added succcessfully"
  	else
  		render products_newp_path, alert: "product implication error"
  	end
  end

	def edit
 		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		if @product.update_attributes(params[:product])
			redirect_to products_path, notice: "Product updated succcessfully"
		else
			render "edit", alert: "Product hasn't been modified"
		end
	end 

  def destroy
  	@product = Product.find(params[:id])
  	@product.delete

  	redirect_to products_newp_path
  end




  private

  def product_params
  	params.require(:product).permit(:name, :price, :description)
  end


end
