class Event < ActiveRecord::Base
  has_and_belongs_to_many :users

  def host
    User.find_by_id(user_id)
  end

  def dates
    if on_the_same_day?(start_datetime, end_datetime)
      "#{start_datetime.strftime('%b %d')} from #{start_datetime.strftime('%I:%M')} to #{end_datetime.strftime('%I:%M')}"
    else
      "#{start_datetime.strftime('%b %d')} at #{start_datetime.strftime('%I:%M')} to #{end_datetime.strftime('%b %d')} at #{end_datetime.strftime('%I:%M')}"
    end
  end

  def on_the_same_day?(datetime1, datetime2)
    datetime1.strftime("%d %b %Y") == datetime2.strftime("%d %b %Y")
  end

end
