class Api::V1::HybridsController < ApplicationController

    def index
        @hybrids = Hybrids.all
        render json: @hybrids
    end

end