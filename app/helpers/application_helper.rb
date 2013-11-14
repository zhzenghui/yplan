module ApplicationHelper
  
  def full_title(page_title)
    full_title = "Ruby on Rails Tutorial App"
    full_title += " | #{page_title}" unless page_title.blank?
  end
end
