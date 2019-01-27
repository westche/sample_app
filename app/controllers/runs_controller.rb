class RunsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  # GET /runs
  # GET /runs.json
  def index
    @runs = Run.all
  end

  # GET /runs/1
  # GET /runs/1.json
  def show
     @run = Run.find(params[:id])
  end

  # GET /runs/new
  def new
    @run = current_user.runs.new
  end

  # GET /runs/1/edit
  def edit
      @run = current_user.runs.find(params[:id])
  end

  # POST /runs
  # POST /runs.json
   def create
    @run = current_user.runs.new(run_params)
    if @run.save
      redirect_to @run, notice: 'Run was successfully created.'
    else
      render :new 
    end
  end

  # PATCH/PUT /runs/1
  # PATCH/PUT /runs/1.json
def update
    @run = current_user.runs.find(params[:id])
    if @run.update(run_params)
      redirect_to @run, notice: 'Run was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /runs/1
  # DELETE /runs/1.json
   def destroy
    @run = current_user.runs.find(params[:id])
    @run.destroy
    redirect_to runs_url, notice: 'Run was successfully deleted.'
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_run
      @run = Run.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def run_params
      params.require(:run).permit(:user_id, :Run_Type, :Location, :Start_Time, :Pace, :Miles)
    end
end
