total=$(free | grep mem | awk '{print $2}')
free=$(free | grep mem | awk '{print $4}')

free_percentage=$(echo "$free / $total * 100" | bc)
echo $free_percentage