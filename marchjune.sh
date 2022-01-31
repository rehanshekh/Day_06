read -p "enter the day : " a ;
read -p "enter the month : " b ;
for [ $a=31 ] && [ $b=4 ] && [ $b=6 ]
do
	echo NA
if [ $a -le 31 ] && [ $b -ge 3 ] && [ $b -le 6 ] ;
then
		echo TRUE ;
else
		echo FALSE ;
fi
