class AdminController < ApplicationController
  def index
    @observatories = Observatory.all
    @observatory = Observatory.new
  end

  def new
  end

  def create
    @observatory = Observatory.new(observatory_params)
    if @observatory.save
      redirect_to admin_index_path
      flash[:notice] = "登録に成功しました。"
    else
      redirect_to admin_index_path
      flash[:error] = "登録に失敗しました。"
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
  private
  def observatory_params
    params.require(:admin).permit(:url, :name, :location)
  end
end
