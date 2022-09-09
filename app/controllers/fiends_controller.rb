class FiendsController < ApplicationController
  before_action :set_fiend, only: %i[ show edit update destroy ]

  # GET /fiends or /fiends.json
  def index
    @fiends = Fiend.all
  end

  # GET /fiends/1 or /fiends/1.json
  def show
  end

  # GET /fiends/new
  def new
    @fiend = Fiend.new
  end

  # GET /fiends/1/edit
  def edit
  end

  # POST /fiends or /fiends.json
  def create
    @fiend = Fiend.new(fiend_params)

    respond_to do |format|
      if @fiend.save
        format.html { redirect_to fiend_url(@fiend), notice: "Fiend was successfully created." }
        format.json { render :show, status: :created, location: @fiend }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fiend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fiends/1 or /fiends/1.json
  def update
    respond_to do |format|
      if @fiend.update(fiend_params)
        format.html { redirect_to fiend_url(@fiend), notice: "Fiend was successfully updated." }
        format.json { render :show, status: :ok, location: @fiend }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fiend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fiends/1 or /fiends/1.json
  def destroy
    @fiend.destroy

    respond_to do |format|
      format.html { redirect_to fiends_url, notice: "Fiend was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fiend
      @fiend = Fiend.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fiend_params
      #params.fetch(:fiend, {})
      params.require(:fiend).permit(:first_name, :last_name, :email, :phone, :twitter, )
    end
end
