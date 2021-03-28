ch='\e[92m'
dis='\e[93m'
oo='\e[0m'

perc=`termux-battery-status | grep percentage | awk '{print $2}' | tr , '%'`
status=`termux-battery-status | grep status | awk '{print $2}'`

if [[ $status == '"CHARGING",' ]]; then
	echo -e "${perc} $ch(CHARGING)$oo"
elif [[ $status == '"DISCHARGING",' ]]; then
	echo -e "${perc} $dis(DISCHARGING)$oo"
fi

