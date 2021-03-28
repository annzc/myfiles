#!/data/data/com.termux/files/usr/bin/env bash

# declaring needed variables
# DISK
sizehome=$(df -h | egrep '/storage/emulated' | awk '{print $2}')
usedhome=$(df -h | egrep '/storage/emulated' | awk '{print $3}')
availhome=$(df -h | egrep '/storage/emulated' | awk '{print $4}')
usehome=$(df -h | egrep '/storage/emulated' | awk '{print $5}')
mountedhome=$(df -h | egrep '/storage/emulated' | awk '{print $6}')

# battery variables for generating status battery
health=`termux-battery-status | grep health | awk '{print $2}' | sed "s/,//g"`
perc=`termux-battery-status | grep percentage | awk '{print $2}' | sed "s/,//g"`
statums=`termux-battery-status | grep status | awk '{print $2}'`
temp=`termux-battery-status | grep temp | awk '{print $2}' | sed "s/,//g"`

# color?
ch='\e[92m'
dis='\e[93m'
oo='\e[0m'

home() {
  echo -e "home {"
  echo -e "  Size        :" $sizehome
  echo -e "  Used        :" $usedhome "/" $sizehome "("$usehome")"
  echo -e "  Avail       :" $availhome "/" $sizehome "("$usehome")"
  echo -e "  Use%        :" $usehome
  echo -e "  Mounted on  :" $mountedhome
  echo -e "}"
}

more() {
  echo -e "Usage : \nCOMMAND [PARAMETER]\n"
  echo -e "-i       : Show internal partition"
  echo -e "-b       : Show battery status"
  echo -e "--help   : Show help"
}

batticon() {
  if [[ $statums == '"FULL",' ]]; then
    echo 
  elif [[ $perc -gt 0 && $perc -lt 20 ]]; then
    echo -e "\e[91m\e[0m"
  elif [[ $perc -gt 19 && $perc -lt 30 ]]; then
    echo "\e[93m\e[0m"
  elif [[ $perc -gt 29 && $perc -lt 40 ]]; then
    echo 
  elif [[ $perc -gt 39 && $perc -lt 50 ]]; then
    echo 
  elif [[ $perc -gt 49 && $perc -lt 60 ]]; then
    echo 
  elif [[ $perc -gt 59 && $perc -lt 70 ]]; then
    echo 
  elif [[ $perc -gt 69 && $perc -lt 80 ]]; then
    echo 
  elif [[ $perc -gt 79 && $perc -lt 90 ]]; then
    echo 
  elif [[ $perc -gt 89 && $perc -lt 100 ]]; then
    echo 
  elif [[ $perc == 100 ]]; then
    echo 
  else
    continue
  fi
}

nbatt() {
  if [[ $statums == '"CHARGING",' ]]; then
    echo -e "$perc% $ch(CHARGING)$oo"
  elif [[ $statums == '"DISCHARGING",' ]]; then
    echo -e "$perc% $dis(DISCHARGING)$oo"
  elif [[ $statums == '"FULL",' ]]; then
    echo -e "$perc% \e[94m(FULL)$oo"
  fi
}

batt()
{
  echo -e "health    : $health
status    : $(nbatt)
heat      : $temp°"
}

if [[ "$1" == "-r" ]]; then
  root
elif [[ "$1" == "-i" ]]; then
  home
elif [[ "$1" == "--help" ]]; then
  more
elif [[ "$1" == "-b" ]]; then
  batt
elif [[ "$1" == "batt" ]]; then
  echo "Battery level: `nbatt` `batticon`"
elif [[ "$1" == "icon" ]]; then
  batticon
elif [[ "$1" == "bat" ]]; then
  nbatt
else
  { more; }
fi
