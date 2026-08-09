class HabitsController < ApplicationController
  def index
    @selected_year  = (params[:year] || Date.today.year).to_i
    @selected_month = (params[:month] || Date.today.month).to_i

    @current_date = Date.new(@selected_year, @selected_month, 1)

    @prev_month = @current_date.prev_month
    @next_month = @current_date.next_month

    start_of_month = @current_date.beginning_of_month
    end_of_month   = @current_date.end_of_month

    padding_start = (start_of_month.wday - 1) % 7
    padding_end   = (7 - end_of_month.wday) % 7

    days = (start_of_month..end_of_month).to_a
    @calendar_days = ([nil] * padding_start) + days + ([nil] * padding_end)

    habits = Habit.where(scheduled_at: start_of_month.beginning_of_day..end_of_month.end_of_day)
    @habits_by_date = habits.group_by { |h| h.scheduled_at.to_date }

    @motivational_quotes = [
      "Time for a new goal!",
      "Plan your progress today.",
      "Your future is created today.",
      "A fresh start awaits!",
      "Small steps, big results!"
    ]
  end
end