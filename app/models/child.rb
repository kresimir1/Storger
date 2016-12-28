class Child< ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :dob, presence: true
  validates :gender, presence: true

  belongs_to :user




  def age(dob)
    now = Time.now.utc.to_date
    month_days = Time.days_in_month(dob.month, dob.year)
    years = now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
    if years >= 1
      return "#{years} yr."
    else
      if now.year == dob.year
        months = now.month - dob.month
      else
        months = now.month + (12 - dob.month)
      end
      if months < 1
        if now.month == dob.month
          days = now.day - dob.day
        else
          days = now.day + (month_days - dob.day)
        end
        return "#{(days/7).round} wk."
      else
        return "#{months} mth."
      end
    end
  end
end
