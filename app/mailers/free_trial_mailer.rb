class FreeTrialMailer < ActionMailer::Base
  def email(params)
    @name = params['name']
    @email = params['email']
    @workout = Workout.find_by_id(params['workout']).try(:title)
    @time = Schedule.find_by_id(params['trial_time']).try(:formatted_start_time)
    @day = Day.find_by_id(params['trial_day']).try(:name)
    @comments = params['comments']

    mail(to: 'elohcin@gmail.com', subject: 'Free Trial Request', from: 'info@invictusdefenseacademy.com')
  end

  def thank_you(params)
    @name = params['name']
    @email = params['email']
    @workout = Workout.find_by_id(params['workout']).try(:title)
    @time = Schedule.find_by_id(params['trial_time']).try(:formatted_start_time)
    @day = Day.find_by_id(params['trial_day']).try(:name)
    @comments = params['comments']

    mail(to: @email, subject: 'Free Trial Request', from: 'info@invictusdefenseacademy.com')
  end
end