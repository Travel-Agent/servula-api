class EndpointsController < ApplicationController
  before_action :set_endpoint, only: [:show, :edit, :update, :destroy]

  # GET /endpoints
  def index
    @endpoints = Endpoint.all
  end

  # GET /endpoints/1
  def show
  end

  # GET /endpoints/new
  def new
    @endpoint = Endpoint.new
  end

  # GET /endpoints/1/edit
  def edit
  end

  # POST /endpoints
  def create
    @endpoint = Endpoint.new(endpoint_params)

    if @endpoint.save
      redirect_to @endpoint, notice: 'Endpoint was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /endpoints/1
  def update
    if @endpoint.update(endpoint_params)
      redirect_to @endpoint, notice: 'Endpoint was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /endpoints/1
  def destroy
    @endpoint.destroy
    redirect_to endpoints_url, notice: 'Endpoint was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_endpoint
      @endpoint = Endpoint.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def endpoint_params
      params.require(:endpoint).permit(:name, :path, :method, :description, :parameters, :example)
    end
end
