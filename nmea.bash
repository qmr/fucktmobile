while true
do
	while IFS= read -r line;
	do
		location=$(echo "$line" | grep GNGGA)
		echo "$location" > location
	done < <(curl 192.168.43.1:10110)
done
