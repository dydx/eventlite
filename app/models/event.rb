class Event < ActiveRecord::Base
  has_and_belongs_to_many :users

  def host
    User.find_by_id(user_id)
  end

  def dates
    if on_the_same_day?(start_datetime, end_datetime)
      "#{month_day(start_datetime)} from #{time_of_day(start_datetime)} to #{time_of_day(end_datetime)}"
    else
      "#{month_day(start_datetime)} at #{time_of_day(start_datetime)} to #{month_day(end_datetime)} at #{time_of_day(end_datetime)}"
    end
  end

private

  def month_day(datetime)
    "#{datetime.strftime('%b %d')}"
  end

  def time_of_day(datetime)
    "#{datetime.strftime('%I:%M')}"
  end

  def on_the_same_day?(datetime1, datetime2)
    datetime1.strftime("%d %b %Y") == datetime2.strftime("%d %b %Y")
  end

end
