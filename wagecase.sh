isparttime=1
isfulltime=2
emprateperhr=20
empcheck=$((RANDOM%3))
case $empcheck in
		$isparttime )
					emphrs=4
				;;
		$isfulltime )
					emphrs=8
				;;
		* )
					emphrs=0
				;;
esac
salary=$(($emphrs * $emprateperhr))
echo "salary="$salary
