#!/data/data/com.termux/files/usr/bin/sh
while true
do
for i in $(seq 4)
do
sleep 0.1
if (( $i == 1 ))
then
sig="   "
sleep 0.1
elif (( $i == 2 ))
then
sig="."
elif (( $i == 3 ))
then
sig=".."
elif (( $i == 4 ))
then
sig="..."
fi
echo " please wait $sig\r\c"
done
done
