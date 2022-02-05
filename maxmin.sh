#! /bin/bash  -x
read -p "enter first number : " a
read -p "enter second number : " b
read -p "enter third number : " c
if [ $b -gt 0  ]
then
	w=`echo $a  $b  $c | awk '{print $1+$2*$3}'`;
		echo $w;
	x=`echo $a  $b  $c | awk '{print $1%$2+$3}'`
		echo $x
	y=`echo $c  $a  $b | awk '{print $1+$2/$3}'`
		echo $y
	z=`echo $a $b $c | awk '{print $1*$2+$3}'`
		echo $z
if [ $w -gt $x ] && [ $w -gt $z ] && [ `echo $w $y | awk '{if($1>$2) {print $1}}'` ]  
then
		echo $w"w"
elif [ $x -gt $w ] && [ $x -gt $z ] && [ `echo $x $y | awk '{if($1>$2) {print $1}}'` ]
then
		echo $x"x"
elif [ $z -gt $w ] && [ $z -gt $x ] && [ `echo $z $y | awk '{if($1>$2) {print $1}}'` ]
then
		echo $z"z"
else
		echo $y"y"
fi
if [ $w -lt $x ] && [ "( $w -lt $y | bc )" ] && [ $w -lt $z ]
then
		echo $w"w"
elif [ $x -lt $w ] && [ "( $x -lt $y | bc )" ] && [ $x -lt $z ]
then
	echo $x"x"
elif [ $z -lt $w ] && [ $z -lt $x ] && [ "($z -lt $y | bc )" ]
then
	echo $y"y"
else
	echo $z"z"
fi
fi
