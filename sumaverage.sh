a=$((RANDOM%89 + 10))
b=$((RANDOM%89 + 10))
c=$((RANDOM%89 + 10))
d=$((RANDOM%89 + 10))
e=$((RANDOM%89 + 10))

sum=$(( $a + $b + $c + $d + $e ))
echo $sum | awk  '{ print $sum/5 }'


a=$((RANDOM%100))
echo $a;
