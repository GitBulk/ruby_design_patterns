class Bigger < Expression
  def initialize(size)
    @size = size
  end

  def evaluate(dir)
    dir = dir + '/' unless dir.end_with?('/')
    results = []
    entries = Dir.entries(dit)
    entries.each do |entry|
      path = dir + entry
      next unless File.file?(path)
      next if File.size(path) <= @size

      results << path
    end

    results
  end
end