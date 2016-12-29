class Vaccine < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :timeframe
  validates_presence_of :description
  validates_presence_of :month, numericality: { only_integer: true }
  validates_presence_of :year, numericality: { only_integer: true }


  def vaccine_date(dob)
    months_list = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    m = dob.month + month
    y = dob.year + year
    if m > 12
      y += (m/12).round
      m -= 12 * (m/12).round
    end
    return "#{months_list[m-1]} #{y}"
  end
end
