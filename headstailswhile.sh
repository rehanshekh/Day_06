i=0
j=0
while [[ $i -lt 11 && $j -lt 11 ]]
do
a=$((RANDOM%2))
case $a in
		0)
echo HEADS
((i++))
		;;
		1)
echo TAILS
((j++))
		;;
esac
done
