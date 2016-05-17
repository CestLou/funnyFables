class FablesController < ApplicationController
  before_action :set_fable, only: [:show, :edit, :update, :destroy]

  # GET /fables
  # GET /fables.json
  def index
    @fables = Fable.all
  end

  # GET /fables/1
  # GET /fables/1.json
  def show
  end

  # GET /fables/new
  def new
    @fable = Fable.new
    build_default_lines(@fable)
  end

  # GET /fables/1/edit
  def edit
    build_default_lines(@fable)
  end

  # POST /fables
  # POST /fables.json
  def create
    @fable = Fable.new(fable_params)

    respond_to do |format|
      if @fable.save
        format.html { redirect_to @fable, notice: 'Fable was successfully created.' }
        format.json { render :show, status: :created, location: @fable }
      else
        format.html { render :new }
        format.json { render json: @fable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fables/1
  # PATCH/PUT /fables/1.json
  def update
    respond_to do |format|
      if @fable.update(fable_params)
        format.html { redirect_to @fable, notice: 'Fable was successfully updated.' }
        format.json { render :show, status: :ok, location: @fable }
      else
        format.html { render :edit }
        format.json { render json: @fable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fables/1
  # DELETE /fables/1.json
  def destroy
    @fable.destroy
    respond_to do |format|
      format.html { redirect_to fables_url, notice: 'Fable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fable
      @fable = Fable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fable_params
      params.require(:fable).permit(
        :title,
        lines_attributes: [
          :text,
          :user_input
          ]
        )
    end
    
    def build_default_lines(fable)
      (5-fable.lines.count).times {fable.lines.build}
    end
end
