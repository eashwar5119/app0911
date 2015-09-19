class Schedule < ActiveRecord::Base
  belongs_to :support
validates :vacation , exclusion: {in: ['yes'] ,  message: " :     Selected support is not available on this day."}
  validate :workingday
  validate :holiday

   validate :date_cannot_be_in_the_past

  def date_cannot_be_in_the_past
    errors.add(:dateshedule, "can't be in the past") if
      !dateshedule.blank? and dateshedule < Date.today
  end



   def holiday
   if dateshedule.strftime('%m %d') == "01 01" or dateshedule.strftime('%m %d') == "01 19" or dateshedule.strftime('%m %d') == "02 16" or dateshedule.strftime('%m %d') == "03 31" or dateshedule.strftime('%m %d') == "05 25" or dateshedule.strftime('%m %d') == "07 04" or dateshedule.strftime('%m %d') == "09 07" or dateshedule.strftime('%m %d') == "11 27" or dateshedule.strftime('%m %d') == "12 25"
   	errors.add(:dateshedule , "  : The selected day is public holiday")
  end
end

  def workingday
  	require 'date'
  	if dateshedule.strftime('%a')=="Sat" or dateshedule.strftime('%a') == "Sun"
  		errors.add(:dateshedule , "     : The selected day is the holiday, please select the next available working day for this support")
  end
end
end
