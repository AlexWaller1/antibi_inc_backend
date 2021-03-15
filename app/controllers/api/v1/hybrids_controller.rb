class Api::V1::HybridsController < ApplicationController

    def index
        @hybrids = Hybrids.all
        render json: @hybrids, status: 200
    end

    def show
        @hybrid = Hybrid.find(params[:id])
        render json: @hybrid, status: 200
    end

    def create
        @hybrid = Hybrid.create(hybrid_params)
        render json: @hybrid, status: 200
    end

    def update
        @hybrid = Hybrid.find(params[:id])
        @hybrid.update(hybrid_params)
        render json: @hybrid, status: 200
    end

    def destroy
        @hybrid = Hybrid.find(params[:id])
        @hybrid.delete
        render json: {hybridId: @hybird.id}
    end

    private

    def hybrid_params
        params.require(:hybrid).permit(:name, :species, :personality, :biography, :image)
    end

end