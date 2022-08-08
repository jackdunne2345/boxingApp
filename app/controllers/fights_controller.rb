class FightsController < ApplicationController
  before_action  :checkUser
  before_action :set_fight, only: %i[ show edit update destroy ]
  before_action :authenticate_fighter!, except: [ :index]
  #calls the function "fighterbefor the action of edit,update,destroy
 before_action :fighter_check, only: [:edit, :update, :destroy]
 
 #send to home page if not logged in
def checkUser
  redirect_to root_path, notice: "not logged in" if current_fighter.nil?
end

  def index
   
    #ransakc search
    @q= Fight.ransack(params[:q])
     @fights = @q.result
    
  end

  # GET /fights/1 or /fights/1.json
  def show
  end

  # GET /fights/new
  def new
    @fight = current_fighter.fights.build
  end

  # GET /fights/1/edit
  def edit
  end

  # POST /fights or /fights.json
  def create
    #@fight = Fight.new(fight_params)
    @fight=current_fighter.fights.build(fight_params)

    respond_to do |format|
      if @fight.save
        format.html { redirect_to fight_url(@fight), notice: "Fight was successfully created." }
        format.json { render :show, status: :created, location: @fight }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fight.errors, status: :unprocessable_entity }
      end
    end
  end

  # takes current ussers finds its id and comapres it to the fight fighterid by it also allows coaches to edit update and delete there fighters figths
  #also attempted to make it possible nfor only coaches to eddit the fights that came from there clubs fighters instead i only make them available in the ui
 def fighter_check
      
      @fight = current_fighter.fights.find_by(id: params[:id])
     @fight1= current_fighter.fights.find_by(club: params[:club])
      if current_fighter.role == 'coach'
        @fight2=2
      else
        @fight2=1
      end
      redirect_to root_path, notice: "not your fight ayeee?" if @fight.nil? ||  (1 == fight2 and @fight1.nil?)
  end

  # PATCH/PUT /fights/1 or /fights/1.json
  def update
    respond_to do |format|
      if @fight.update(fight_params)
        format.html { redirect_to fight_url(@fight), notice: "Fight was successfully updated." }
        format.json { render :show, status: :ok, location: @fight }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fight.errors, status: :unprocessable_entity }
      end
    end
  end
  
 
  # DELETE /fights/1 or /fights/1.json
  def destroy
    @fight.destroy

    respond_to do |format|
      format.html { redirect_to fights_url, notice: "Fight was successfully destroyed." }
      format.json { head :no_content }
    end


  end

   
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fight
      @fight = Fight.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fight_params
      params.require(:fight).permit(:blue_corner, :red_corner, :date, :competition, :winner, :fighter_id, :club)
    end
  end
