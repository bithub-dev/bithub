module ApplicationHelper
  def friendly_date(date)
    date.strftime("%A %B %d %Y at %I:%M%p")
  end
end
