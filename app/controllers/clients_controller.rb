
class ClientsController < ApplicationController

    def index

      @clients = Client.all
    
    end

    def create
        @client = Client.new(client_params)
    
        respond_to do |format|
          if @client.save
            format.html { redirect_to @client, notice: 'Pet was successfully created.' }
            format.json { render :show, status: :created, location: @client }
          else
            format.html { render :new }
            format.json { render json: @client.errors, status: :unprocessable_entity }
          end
        end
      end

    def new
      @client = Client.new

    end

    def edit
      @client = Client.find(params[:id])

    end

    def show
      @client = Client.find(params[:id])
      @pets = Pet.all
    end

    def update
      @client = Client.find(params[:id])
      respond_to do |format|
        if @client.update(client_params)
          format.html { redirect_to @client, notice: 'Pet history was successfully updated.' }
          format.json { render :show, status: :ok, location: @client }
        else
          format.html { render :edit }
          format.json { render json: @client.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
    
    end

    private

      # Use callbacks to share common setup or constraints between actions.
      def set_client_history
        @client = Client.find(params[:id])
      end


    # Never trust parameters from the scary internet, only allow the white list through.
    def client_params
      params.require(:client).permit(:name, :telefone, :mail)
    end

end
