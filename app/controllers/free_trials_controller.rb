class FreeTrialsController < ApplicationController
  def get_schedules
    workout = Workout.find_by_id(params[:workout_id])
    @schedules = workout.schedules

    respond_to do |format|
      format.js
    end
  end

  def get_days
    schedule = Schedule.find_by_id(params[:schedule_id])
    @days = schedule.days

    respond_to do |format|
      format.js
    end
  end

  def submit
    if request_params.present?
      return if request_params['secondary_email'].present?

      request = FreeTrialRequest.new(request_params)

      if request.save
        FreeTrialMailer.email(params[:free_trial_request]).deliver
        # FreeTrialMailer.thank_you(params[:free_trial_request]).deliver
        @data = { email: '' }
      else
        @data = { error: 'Please fill out the form.' }
      end

      render json: @data
    end
  end

  private

  def request_params
    params.require(:free_trial_request).permit(:name, :email, :comments, :workout, :trial_day, :trial_time, :secondary_email)
  end
end