class UnitsController < ApplicationController
    def index
        @units = Unit.all
        render json: @units
    end

    def show
        @unit = Unit.find_by(date_uf: Date.parse(params[:date_uf]))
        #user = request.headers['X-CLIENTE']
        Request.create(name: params[:client])

        if @unit
            render json: @unit
        else
            render json: {message: 'Dato no encontrado'}
        end
    end
end
