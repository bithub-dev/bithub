module ApplicationHelper
  def friendly_date(date)
    date.strftime("%A %B %d %Y at %I:%M%p")
  end

  def linkify_tags(tag_list)
    # XSS note: link_to sanitizes user input. We are returning
    # HTML to the view. This should be safe.
    raw tag_list.map { |tag| link_to(tag, tags_path(tag)) }.join(", ")
  end
end
