#!/bin/bash
read -p "Enter a single digit number : " a
if [[ $a -le $((RANDOM%10000)) ]]
then
case $a in
         $a%9 )
            Numbers=UNIT
            ;;
         $a%89+10 )
            Numbers=TEN
            ;;
         $a%899+100 )
            Numbers=HUNDRED
            ;;
         $a%8999+1000 )
            Numbers=THOUSAND
            ;;
         $a%89999+10000 )
            Numbers=TEN THOUSAND
            ;;
esac
 Term=$Numbers
	echo $Term
else
	echo "NA"
fi
