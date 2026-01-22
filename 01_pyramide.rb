def pyramid
    puts "Enter the number of levels for the pyramid:"
    levels = gets.chomp.to_i

    (1..levels).each do |i|
        puts " " * (levels - i) + "#" * (2 * i - 1)
    end
end

pyramid