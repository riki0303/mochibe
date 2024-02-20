class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    if current_user.profile
      @profile = current_user.profile
    end
  end

  def edit
    @profile = current_user.prepare_profile
  end

  def update
    @profile = current_user.prepare_profile

    if @profile.update(profile_params)
      redirect_to profile_path, notice: '更新出来ました'
    else
      flash.now[:alert] = '更新出来ませんでした'
      render :edit
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :bio)
  end
end