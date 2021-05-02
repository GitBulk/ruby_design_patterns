class All < Expression
  def evaluate(dir)
    dir = dir + '/' unless dir.end_with?('/')
    results = []
    entries = Dir.entries(dir)
    entries.each do |entry|
      path = dir + entry
      next unless File.file?(path)

      results << entry
    end

    results
  end
end