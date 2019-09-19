# cerner_2^5_2019
# The program prints a diamond with '*' according to the number of columns specified.
puts "Enter the number of columns for the diamond: "
cnt = gets.chomp.to_i
1.upto(cnt) do |i|
    i.upto(cnt - 1) { print " " }
    i.times { print " *" }
    print "\n"
end
cnt = cnt - 1
cnt.downto(1) do |i|
    i.upto(cnt) { print " " }
    i.times { print " *" }
    print "\n"
end