class BusesController < ApplicationController
  before_action :set_bus, only: [:show, :edit, :update, :destroy]
    def index
        @buses = Bus.all
    end

    def show
    end

    def new
        @bus = Bus.new
    end

    def edit
    end

    def create
      @bus = Bus.new(bus_params)
    
      respond_to do |format|
        if @bus.save
          format.html { redirect_to @bus, notice: 'Bus was successfully created.' }
          format.json { render :show, status: :created, location: @bus }
        else
          format.html { render :new }
          format.json { render json: @bus.errors, status: :unprocessable_entity }
        end
      end
    end

      def update
        respond_to do |format|
          if @bus.update(bus_params)
            format.html { redirect_to @bus, notice: 'Bus was successfully updated.' }
            format.json { render :show, status: :ok, location: @bus }
          else
            format.html { render :edit }
            format.json { render json: @bus.errors, status: :unprocessable_entity }
          end
        end
      end

      def destroy
        @bus.destroy
        respond_to do |format|
          format.html { redirect_to buses_url, notice: 'Bus was successfully destroyed.' }
          format.json { head :no_content }
        end
      end

      private
       
        def set_bus
          @bus = Bus.find(params[:id])
        end

        def bus_params
          params.require(:bus).permit(:name)
        end
    end
  


