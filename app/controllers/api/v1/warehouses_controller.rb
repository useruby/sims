class Api::V1::WarehousesController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource
end
