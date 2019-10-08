#cener_2^5_2019
set number {0 1 2 3 4 5}
puts "Number\tSquare"
foreach x $number {
    puts "$x\t [expr {2**$x}]"
}