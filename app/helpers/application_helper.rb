module ApplicationHelper

  def logo
  samp_logo = image_tag("dtslogo.jpg", :alt => "Sample APP", :class => "round") 
  end

  # define Global / Unique Title Header

  def title
    base_title = "Remittance Administration System"
    if @title.nil?
      base_title
    else
      "#{base_title} |#{@title}"
    end
  end

end
