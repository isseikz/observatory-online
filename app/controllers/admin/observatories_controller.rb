class Admin::ObservatoriesController < ApplicationController
  def create
  end

  def edit
    @observatory = Observatory.find(params[:id])
  end

  def update
    @observatory = Observatory.find(params[:id])
    if @observatory.update(observatory_params)
      redirect_to admin_index_path
      flash[:notice] = "更新しました"
    else
      flash[:error] = "失敗しました"
    end
  end

  def destroy
  end
  private
  def observatory_params
    params.require(:observatory).permit(:url, :name, :location)
  end
end
