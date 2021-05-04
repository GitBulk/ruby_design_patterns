# frozen_string_literal: true

class PlainTextReport < Report
  def display_start; end

  def display_head
    puts "**** #{@title} ****"
    puts
  end

  def display_body_start; end

  def display_line(line)
    puts(line)
  end

  def display_body_end; end

  def display_end; end
end
