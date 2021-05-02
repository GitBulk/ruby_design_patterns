# frozen_string_literal: true

class Writable < Expression
  def initialize(size)
    @size = size
  end

  def evaluate(dir)
    dir += '/' unless dir.end_with?('/')
    results = []
    entries = Dir.entries(dit)
    entries.each do |entry|
      path = dir + entry
      next unless File.file?(path)
      next unless File.writable?(path)

      results << path
    end

    results
  end
end
