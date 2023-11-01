total=$(free | grep Mem | awk '{print $2}')
free=$(free | grep Mem | awk '{print $4}')

free_percentage=$(echo "$free / $total * 100" | bc -l )
echo $free_percentage

# 0-50 used -> good
# $1 - 70 - orange
# >70 - red

if [ $used_percentage -lt 50 ]; then
  echo Mem stat is GREEN
elif [ $used_percentage -lt 70 ]; then
  echo Mem stat is ORANGE
else
  echo Mem stat is RED
fi