#!/data/data/com.termux/files/usr/bin/zsh
while true
do
  det=`date "+%S"`
  det=$det[2]
  sleep 1
  if [[ $det == "1" || $det == "4" || $det == "7" ]]
  then
    det="\\"
  elif [[ $det == "2" || $det == "5" || $det == "8" ]]
  then
    det="/"
  elif [[ $det == "3" || $det == "6" || $det == "9" ]]
  then
    det="-"
  else
    det="•"
  fi
  echo -n " Please wait... $det \r"
done
