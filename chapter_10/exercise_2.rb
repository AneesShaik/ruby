def program_logger(block_description, &block)

  puts "Started block #{block_description}."
  result = block.call
  puts "#{block_description} finished, returning: #{result}"

end


program_logger "Square it: outer block" do |x|
  outer = 6
  program_logger "Double it: inner block" do |y|
    inner = 8
    program_logger "Say hi: innermost block" do
      puts "Hello"
    end

    inner + inner
  end

  outer * outer
end
