isparttime=1
isfulltime=2
empcheck=$((RANDOM%3))
emprateperhr=20
if [ $empcheck -eq $isparttime ]
then
emphr=4
elif [ $empcheck -eq $isfulltime ]
then
emphr=8
else
emphr=0
fi
salary=$(($emprateperhr * $emphr))
echo "salary is"$salary
