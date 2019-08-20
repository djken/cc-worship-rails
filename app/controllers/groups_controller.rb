class GroupsController < ApplicationController
    before_action :set_group, only: [:show, :edit, :update, :destroy]
  
    # GET /groups
    def index
      @groups = Group.all
    end
  
    # GET /groups/1
    def show
    end
  
    # GET /groups/new
    def new
      @group = Group.new
    end
  
    # GET /groups/1/edit
    def edit
    end
  
    # POST /artists
    def create
      @group = Group.new(group_params)

        if @group.save
            redirect_to @group, notice: 'Artist was successfully created.'
        else
          render :new 
          render @group.errors, status: :unprocessable_entity
        end
    end
  
    # PATCH/PUT /artists/1
    # PATCH/PUT /artists/1.json
    def update
        if @group.update(group_params)
          redirect_to @group, notice: 'Group was successfully updated.'
        else
          render :edit
          render json: @artist.errors, status: :unprocessable_entity
        end
    end
  
    # DELETE /artists/1
    # DELETE /artists/1.json
    def destroy
      @group.destroy
        redirect_to groups_url, notice: 'Artist was successfully destroyed.'
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_group
        @group = Group.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def group_params
        params.require(:group).permit(:name, :location, :info)
      end
  end
  
