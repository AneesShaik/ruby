$nesting_depth = 0

def program_logger(block_description, &block)
  $nesting_depth += 1
  puts "#{"\t" * $nesting_depth} Started block #{block_description}"

  result = block.call

  puts "#{"\t" * $nesting_depth} #{block_description} finished, returning: #{result}"
  $nesting_depth -= 1
end

program_logger "Square it: outer block" do |x|
  outer = 6

  program_logger "Double it: inner block" do |y|
    inner = 8

    program_logger "Say hi: innermost block" do
      "Hello"
    end

    inner * 2
  end

  outer ** 2
end

