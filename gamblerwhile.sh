amount=100
bet=0
won=0
while [[ $amount -gt 0 && $amount -lt 200 ]]
do
((bet++))
throw=$((RANDOM%2))
case $throw in
			0)
			amount=$amount-1
			;;
			1)
			amount=$amount+1
			((won++))
			;;
esac
done
echo $bet "bets made"
echo $won "bets Won"
