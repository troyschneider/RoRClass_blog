module ApplicationHelper
  def friendly_date(d)
    d.strftime("%B %e, %Y")
  end
  
  def friendly_dateTime(d)
    d.strftime("%B %e, %Y %r")
  end
end
