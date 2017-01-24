while true
do
	curl 192.168.43.1:10110 | grep GNGGA > location
done
