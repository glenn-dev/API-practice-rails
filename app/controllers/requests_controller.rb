class RequestsController < ApplicationController
    def index
        @resquests = Request.all
        render json: @resquests
    end

    def show
        @request = Request.find_by(name: params[:id])
        @count = Request.where(name: params[:id]).count
        if @request
            render json: [@request, @count]
        else
            render json: {message: 'No existe usuario'}
        end
    end

    private

    def request_params
        params.require(:request).permit(:name)
    end

end
