read -p "enter the first no.to check whether it is palindrome or not :" num1
function palindrome() {
rev1=0
n1=$num1
while [ $n1 -gt 0 ]
do
rem=$(($n1%10))
n1=$(($n1 / 10))
rev1=$((($rev1 * 10) + $rem))
done
if [ $rev1 -eq $num1 ]
then
echo $num1 is a palindrome number
else
echo $num1 is not a palindrome number
fi
}
check=$(palindrome)
echo $check
read -p "enter another no. to check whether it is palindrome or not:" num1
check=$(palindrome)
echo $check
