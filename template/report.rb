# frozen_string_literal: true

class Report
  def initialize
    @title = 'Monthly Report'
    @text = ['Thing are going', 'really, really well']
  end

  def display_report; end

  def display_start
    display_start
    display_head
    display_body_start
    display_body
    display_body_end
    display_end
  end

  def display_head; end

  def display_body_start; end

  def display_body
    @text.each do |line|
      display_line(line)
    end
  end

  def display_body_end; end

  def display_end; end

  def display_line(line); end
end
