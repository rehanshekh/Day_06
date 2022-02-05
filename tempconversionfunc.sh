#!/bin/bash -x
unit=0
degF=1
degC=2
div59=`echo 5 9 | awk '{print $1/$2}'`;
div95=`echo 9 5 | awk '{print $1/$2}'`;
function getconvertedvalue() {
case $unit in
		$degF)
		f32=$(($F-32))
		fvalues=`echo $f32 $div59 degC | awk '{print $1*$2 $3}'`
		echo $fvalues
		;;
		2)
		cd95=`echo $C $div95 | awk '{print $1*$2}'`
		cvalues=`echo $cd95 32 degF | awk '{print $1+$2 $3}'`
		echo $cvalues
		;;
esac
}
read -p "enter the value for conversion degF-degC(press 1) or degC-degF(press2):" unit
if [[ $unit -eq degF ]]
then
read -p "enter the value:" F
C=0
elif [[ $unit -eq degC ]]
then
read -p "enter the value:" C
F=32
else
echo "NA"
fi
if [[ $C -ge 0 && $C -le 100 && $F -ge 32 && $F -le 212 ]]
then
newvalue=$(getconvertedvalue)
echo $newvalue
fi
