require 'date'
class User
  attr_reader :name, :date
  def initialize(name, date)
    @name = name
    @date = convert(date)
  end

  def birthday?
    (@date.month == today.month) && (@date.mday == today.mday)
  end

  def days_left
    if days_to_birthday > 1
      "Your birthday is in #{days_to_birthday} days"
    else
      "Your birthday is in #{days_to_birthday} day"
    end
  end

  def next_birthday
    if already_happened?
      date_shift = today.year + 1 - @date.year
    else
      date_shift = today.year - @date.year
    end

    @date.next_year(date_shift)
  end

  private
  
  def convert(date)
    Date::strptime(date, "%Y-%m-%d")
  end

  def today
    Date.today
  end

  def already_happened?
    (@date.month == today.month && @date.mday < today.mday) || @date.month < today.month
  end

  def days_to_birthday
    (next_birthday - today).to_i
  end


end