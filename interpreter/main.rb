ex = Expression.new
results = (ex.bigger(2000) & ex.except(ex.writable)) | ex.file_name('*.mp3')
puts results