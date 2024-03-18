# frozen_string_literal: true

class JunctionsController < ApplicationController # rubocop:todo Style/Documentation

  def new
    @junction = Junction.new
  end

  def create
    @junction = Junction.new(junction_params)

    if @junction.save
      respond_to do |format|
        format.html { redirect_to junctions_path, notice: 'Junction was successfully created.' }
        format.json { render :show, status: :created, location: @junction }
      end
    else
      format.html { render :new, status: :unprocessable_entity }
      format.json { render json: @junction.errors, status: :unprocessable_entity }
    end
  end

  def show
    @junction = Junction.find(params[:id])
    @posts = @junction.posts
  end

  def index
    @junctions = Junction.all
  end

  private

  def junction_params
    params.require(:junction).permit(:location, :city_id)
  end
end
