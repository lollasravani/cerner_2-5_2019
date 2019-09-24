#cerner_2^5_2019
#Prints 2 powersfrom 2 to 32 
$count = 1;
$result = 1;
while ($count < 6) {
$result *= 2;
print "2 ^ $count = $result\n";
$count += 1;
}