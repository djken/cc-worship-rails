class AlbumsController < ApplicationController
    before_action :set_album, only: [:show, :edit, :update, :destroy]
      
    # GET /albums
    def index
      @albums = Album.all
    end
  
    # GET /albums/1
    def show
    end
  
    # GET /albums/new
    def new
      @album = Album.new
    end
  
    # GET /albums/1/edit
    def edit
    end
  
    # POST /albums
    def create
      @album = Album.new(album_params)

        if @album.save
            redirect_to @album, notice: 'Album was successfully created.'
        else
          render :new 
          render @album.errors, status: :unprocessable_entity
        end
    end
  
    # PATCH/PUT /albums/1
    # PATCH/PUT /albums/1.json
    def update
        if @album.update(album_params)
          redirect_to @album, notice: 'Album was successfully updated.'
        else
          render :edit
        end
    end
  
    # DELETE /albums/1
    # DELETE /albums/1.json
    def destroy
      @album.destroy
        redirect_to albums_url, notice: 'Album was successfully destroyed.'
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_album
        @album = Album.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def album_params
        params.require(:album).permit(:title, :year)
      end
end    

