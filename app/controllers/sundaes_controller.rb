class SundaesController < ApplicationController
  def index
    @sundaes = Sundae.all
  end

  def new
  end

  def create
  end

  def update
    @sundae = Sundae.find(params[:id])
    @sundae.update(sundae_params)

    redirect_to sundae_path(@sundae)
  end

  def edit
  end

  def delete
  end

  def show
    @sundae = Sundae.find(params[:id])
  end
end
