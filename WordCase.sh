#!/bin/bash
#!/bin/bash
read -p "Enter a single digit number : " a
if [ $a -lt 10 ]
then
case $a in
			0)
				Numbers=ZERO
				;;
			1)
				Numbers=ONE
				;;
			2)
				Numbers=TWO
				;;
			3)
				Numbers=THREE
				;;
			4)
				Numbers=FOUR
				;;
			5)
				Numbers=FIVE
				;;
			6)
				Numbers=SIX
				;;
			7)
				Numbers=SEVEN
				;;
			8)
				Numbers=EIGHT
				;;
			9)
				Numbers=NINE
				;;
			10)
				Numbers=TEN
				;;
esac
	EnteredNumber=$Numbers
	echo $EnteredNumber
else
	echo "NA"
fi
