# frozen_string_literal: true

class FileName < Expression
  def initialize(pattern)
    @pattern = pattern
  end

  def evaluate(dir)
    dir += '/' unless dir.end_with?('/')
    results = []
    entries = Dir.entries(dit)
    entries.each do |entry|
      path = dir + entry
      next unless File.file?(path)
      next unless File.fnmatch(@pattern, entry)

      results << path
    end

    results
  end
end
