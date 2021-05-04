# frozen_string_literal: true

class HtmlReport < Report
  def display_start
    puts '<html>'
  end

  def display_head
    puts '  <head>'
    puts "<title>#{@title}</title>"
    puts '  </head>'
  end

  def display_body_start
    puts '<body>'
  end

  def display_line(line)
    puts "<p>#{line}</p>"
  end

  def display_body_end
    puts '</body>'
  end

  def display_end
    puts '</html>'
  end
end
