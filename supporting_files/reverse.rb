lines = File.readlines("temp.txt")

lines.each do |line|
  print line.split(' ').reverse.to_s.concat("\n")
end

