echo enter the string input as feet_inch or feet_meter or inch_feet or meter_feet
read -p "enter the string input : " a
read -p "enter the value : " num
if [ $a = feet_inch ] || [ $a = feet_meter ]
then
case $a in
	  feet_inch )
			new_value=$(( $num * 12 ))
			echo $new_value
					;;
	  feet_meter )
			echo $num | awk '{ new_value=$num/3.281 }{print new_value" meter"}'
					;;
esac
elif [ $a = inch_feet ] || [ $a = meter_feet ]
then
case $a in
			inch_feet )
		echo $num | awk '{ new_value=$num/12 }{print new_value" feet"}'
					;;
			meter_feet )
		echo $num | awk '{ new_value=$num*3.281 }{print new_value" feet"}'
					;;
esac
else
		echo NA ;
fi
