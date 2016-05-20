class UserFablesController < ApplicationController
  before_action :set_user_fable, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:index, :show]
  
  # GET /user_fables
  # GET /user_fables.json
  def index
    @user_fables = UserFable.all
  end

  # GET /user_fables/1
  # GET /user_fables/1.json
  def show
  end

  # GET /user_fables/new
  def new
    params.inspect
    @fable = Fable.find(params[:id])
    @user_fable = UserFable.new(fable_id: params[:id] )
    @user_fable.create_blank_answers
  end
  
  # GET /user_fables/1/edit
  def edit
    @fable = Fable.find(@user_fable.fable_id)
  end

  # POST /user_fables
  # POST /user_fables.json
  def create

    @user_fable = UserFable.new(user_fable_params)

    respond_to do |format|
      if @user_fable.save
        format.html { redirect_to @user_fable, notice: 'User fable was successfully created.' }
        format.json { render :show, status: :created, location: @user_fable }
      else
        format.html { render :new }
        format.json { render json: @user_fable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_fables/1
  # PATCH/PUT /user_fables/1.json
  def update
    respond_to do |format|
      if @user_fable.update(user_fable_params)
        format.html { redirect_to @user_fable, notice: 'User fable was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_fable }
      else
        format.html { render :edit }
        format.json { render json: @user_fable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_fables/1
  # DELETE /user_fables/1.json
  def destroy
    @user_fable.destroy
    respond_to do |format|
      format.html { redirect_to user_fables_url, notice: 'User fable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_fable
      @user_fable = UserFable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_fable_params
      params.require(:user_fable).permit(:fable_id, :user_id, :answers => [])
    end
end
