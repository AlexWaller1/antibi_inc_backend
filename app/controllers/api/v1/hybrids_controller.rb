class Api::V1::HybridsController < ApplicationController

    def index
        @hybrids = Hybrids.all
        render json: @hybrids, status: 200
    end

    def show
        @hybrid = Hybrid.find(params[:id])
        render json: @hybrid, status: 200
    end

end