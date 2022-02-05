read -p "enter the argument: " n
i=1
table=2
while [[ $n -le 128 && $i -le $n ]]
do
table=$(($i * 2))
(( i++ ))
echo $table
done
