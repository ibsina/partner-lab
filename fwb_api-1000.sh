for k in {1..10}
do
 x=$((1 + $RANDOM % 3))
 if [ $x -eq 1 ] 
 then
  curldata="{\"login\":\"acbde$k\",\"password\":\"my_password$k\",\"loginid\":$RANDOM ,\"rights\": [ \"sales\", \"finance\"]}"
 fi
 if [ $x -eq 2 ] 
 then
  curldata="{\"login\":\"acbde$k\",\"password\":\"my_password$k\",\"loginid\":$RANDOM ,\"rights\": [ \"sales\"]}"
 fi
 if [ $x -eq 3 ] 
 then
  curldata="{\"login\":\"acbde$k\",\"password\":\"my_password$k\",\"loginid\":$RANDOM ,\"rights\": [ \"sales\", \"finance\", \"admin\" ]}"
 fi
 curl http://fwb-api.fortinet.demo/sales/ -k -H "Content-Type: application/json" --data-raw "$curldata"
done



daftarid=("1 2 3 4 5 6 7 8 10 11 12 13 14 15 16 17 18 19 20")
for idku in ${daftarid[@]};
do
curl -k http://fwb-api.fortinet.demo/news?id=$idku -H "Content-Type: application/json"
done


for k in {1..1000}
do
curldata="{\"user\":\"ahmad $k\"}"
curl http://fwb-api.fortinet.demo/love/food -k -H "Content-Type: application/json" -d "$curldata"
curl http://fwb-api.fortinet.demo/love/drink -k -H "Content-Type: application/json" -d "$curldata"
done
