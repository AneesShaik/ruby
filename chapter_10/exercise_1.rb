def clockwork(&block)
  current_hour = Time.new.hour

  if current_hour > 12
    current_hour = current_hour - 12
  end

  if current_hour == 0 
    current_hour = 12
  end

  current_hour.times do
    block.call
  end
end

clockwork do 
  puts "DONG!!!"
end
