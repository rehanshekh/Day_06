read -p "enter the number:" n
function prime() {
i=0
for (( j=2; j<=$n/2; j++ ))
do
i=$((n%j))
if [ $i -eq 0 ]
then
echo $n is not prime
exit;
fi
done
echo $n is prime
}
rev=0
function palindrome() {
b=$n
while [[ $b -gt 0 ]]
do
a=$(($b%10))
b=$(($b/10))
rev=$((($rev * 10) + $a))
done
if [[ $rev -eq $n ]]
then
echo $rev is a palindrome
else
echo $rev is not a palindrome
fi
}

check=$(palindrome)
echo $check
isprime=$(prime)
echo $isprime
