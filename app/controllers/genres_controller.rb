class GenresController < ApplicationController
    before_action :set_genre, only: [:show, :edit, :update, :destroy]
      
    # GET /genres
    def index
      @genres = Genre.all
    end
  
    # GET /genres/1
    def show
    end
  
    # GET /genres/new
    def new
      @genre = Genre.new
    end
  
    # GET /genres/1/edit
    def edit
    end
  
    # POST /genres
    def create
      @genre = Genre.new(genre_params)

        if @genre.save
            redirect_to @genre, notice: 'Genre was successfully created.'
        else
          render :new 
          render @genre.errors, status: :unprocessable_entity
        end
    end
  
    # PATCH/PUT /genres/1
    # PATCH/PUT /genres/1.json
    def update
        if @genre.update(genre_params)
          redirect_to @genre, notice: 'Genre was successfully updated.'
        else
          render :edit
        end
    end
  
    # DELETE /genres/1
    # DELETE /genres/1.json
    def destroy
      @genre.destroy
        redirect_to genres_url, notice: 'Genre was successfully destroyed.'
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_genre
        @genre = Genre.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def genre_params
        params.require(:genre).permit(:category)
      end
end    

