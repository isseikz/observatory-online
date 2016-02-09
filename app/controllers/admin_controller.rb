class AdminController < ApplicationController
  def index
    @observatories = Observatory.all
    @observatory = Observatory.new
  end

  def new
  end

  def create
    @observatory = Observatory.new(observatory_params)
    @address = @observatory.build_address(observatory_params)
    @prefecture = @address.prefectures
    @observatory.save
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
    params.require(:admin).permit(
      :name,
      :address => [
        :access,
        :prefecture => [
          :name,
          :city => [
            :name,
            :ward => [:name]
          ]
        ]
      ]
      )
  end
end
