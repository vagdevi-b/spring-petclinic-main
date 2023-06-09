url="http://localhost:8081"
expected_status="200"
http_code=$(curl -s -o /dev/null -w "%{http_code}" "$url")
if [ "$http_code" == "$expected_status" ] ; then
  echo "Accessible with status code $expected_status"
else
  echo "Not accessible or has a different status code: $http_code"
fi
