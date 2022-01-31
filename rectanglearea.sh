#!/user/bin/bash -x
echo length_60
echo width_40
a=(60 / 3.281)
b=(40 / 3.281)
c=(4047)
area=$(($a * $b))
echo $area | print '{$area / $c}'
