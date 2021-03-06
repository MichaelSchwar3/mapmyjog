class Api::WorkoutsController < ApplicationController

  def index
    @workouts = Workout.all
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def create
    @workout = Workout.new(workout_params)
    if @workout.save
      render :show
    else
      render json: @workout.errors.full_messages, status: 401
    end
  end

  def edit
    @workout = Workout.find(params[:id])
    render json: `/api/workouts/#{@workout.id}/edit`
  end

  def update
    if @workout.update(workout_params)
      render 'api/workouts/show'
    else
      render json: @workout.errors.full_messages, status: 401
    end
  end

  def destroy
    @workout = Workout.find(params[:id])
    @workout.destroy
    @workouts = Workout.all
    render :index
  end

  private

  def workout_params
    params.require(:workout).permit(:name, :description, :distance, :duration, :run_id, :user_id)
  end

  end
