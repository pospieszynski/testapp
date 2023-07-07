class PugsController < ApplicationController
  before_action :set_pug, only: %i[ show update destroy ]

  # GET /pugs
  def index
    @pugs = Pug.all

    render json: @pugs
  end

  # GET /pugs/1
  def show
    render json: @pug
  end

  # POST /pugs
  def create
    @pug = Pug.new(pug_params)

    if @pug.save
      render json: @pug, status: :created, location: @pug
    else
      render json: @pug.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pugs/1
  def update
    if @pug.update(pug_params)
      render json: @pug
    else
      render json: @pug.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pugs/1
  def destroy
    @pug.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pug
      @pug = Pug.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pug_params
      params.fetch(:pug, {})
    end
end
