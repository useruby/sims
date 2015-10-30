class Api::V1::ProductsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def create
    @product = current_user.products.create(sanitized_params)
 
    render_result_after_create_or_update
  end

  def update
    @product.update(sanitized_params)

    render_result_after_create_or_update
  end

  def destroy
    @product.destroy

    render json: {}
  end

  protected
  def sanitized_params
    params.permit(
      :sku, :name, :description, :price, 
      product_locations_attributes: [:id, :warehouse_id, :quantity, :_destroy]
    )
  end

  def render_result_after_create_or_update
    if @product.valid?
      render :show
    else
      render json: {error: @product.errors}, status: 400
    end
  end
end
