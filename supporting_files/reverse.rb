lines = File.readlines("temp.csv")

lines.each do |line|
  print line.split(' ').reverse.to_s.concat("\n")
end

