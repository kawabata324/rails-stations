class Admin::SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      flash[:success] = "スケジュールを追加しました"
      redirect_to action: "index"
    else
      flash.now[:danger] = "スケジュールの登録に失敗しました"
      render :new
    end
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule = Schedule.find(params[:id])

    if @schedule.update(schedule_params)
      flash[:success] = "スケジュールの更新をしました"
      redirect_to action: "index"
    else
      flash.now[:danger] = "スケジュールの登録に失敗しました"
      render :edit
    end
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy

    redirect_to action: "index"
    flash[:success] = "削除しました"
  end

  private

    def schedule_params
      params.require(:schedule).permit(:movie_id, :start_time, :end_time)
    end
end
