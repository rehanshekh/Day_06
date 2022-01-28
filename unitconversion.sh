#!/bash/bin -x

read -p "Enter the value in inches : " a
echo $a | awk '{print $a/12}'

