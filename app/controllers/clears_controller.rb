class ClearsController < ApplicationController
  before_action :set_clear, only: %i[ show edit update destroy ]

  # GET /clears or /clears.json
  def index
    @clears = Clear.all
  end

  # GET /clears/1 or /clears/1.json
  def show
  end

  # GET /clears/new
  def new
    @clear = Clear.new
  end

  # GET /clears/1/edit
  def edit
  end

  # POST /clears or /clears.json
  def create
    @clear = Clear.new(clear_params)

    respond_to do |format|
      if @clear.save
        format.html { redirect_to clear_url(@clear), notice: "Clear was successfully created." }
        format.json { render :show, status: :created, location: @clear }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @clear.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clears/1 or /clears/1.json
  def update
    respond_to do |format|
      if @clear.update(clear_params)
        format.html { redirect_to clear_url(@clear), notice: "Clear was successfully updated." }
        format.json { render :show, status: :ok, location: @clear }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @clear.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clears/1 or /clears/1.json
  def destroy
    @clear.destroy

    respond_to do |format|
      format.html { redirect_to clears_url, notice: "Clear was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clear
      @clear = Clear.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def clear_params
      params.fetch(:clear, {})
    end
end
