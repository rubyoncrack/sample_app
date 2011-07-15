module ApplicationHelper
  
  # title helper - if @title isn't defined for a given page we can just
  # show the base title
  def title
    base_title = "ESW"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  
  
  def logo
    image_tag('rails.png', :alt => 'row27 rocks', :class => 'round')
  end
  
  
end
