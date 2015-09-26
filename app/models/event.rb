class Event < ActiveRecord::Base
  has_and_belongs_to_many :users

  def host
    User.find_by_id(user_id)
  end

  def dates
    "#{date_to_friendly(start_datetime)} - #{date_to_friendly(end_datetime)}"
  end

  def date_to_friendly(date)
    date.strftime("%d %b %Y %I:%M %p")
  end
end
