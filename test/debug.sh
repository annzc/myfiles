#!/data/data/com.termux/files/usr/bin/env bash
if [[ $statums == '"FULL",' ]]; then
  echo -e " : $perc% \e[93m(FULL)\e[0m"
elif [[ $perc -gt 0 && $perc -le 15 ]]; then
  echo -e " : $perc% \e[93m(DISCHARGING)\e[0m"
elif [[ $perc > 15 && $perc < 30 ]]; then
  echo -e " : $perc% \e[93m(DISCHARGING)\e[0m"
elif [[ $perc > 29 && $perc < 40 ]]; then
  echo -e " : $perc% \e[93m(DISCHARGING)\e[0m"
elif [[ $perc > 39 && $perc < 50 ]]; then
  echo -e " : $perc% \e[93m(DISCHARGING)\e[0m"
elif [[ $perc > 49 && $perc < 60 ]]; then
  echo -e " : $perc% \e[93m(DISCHARGING)\e[0m"
elif [[ $perc > 59 && $perc < 70 ]]; then
  echo -e " : $perc% \e[93m(DISCHARGING)\e[0m"
elif [[ $perc > 69 && $perc < 80 ]]; then
  echo -e " : $perc% \e[93m(DISCHARGING)\e[0m"
elif [[ $perc > 79 && $perc < 90 ]]; then
  echo -e " : $perc% \e[93m(DISCHARGING)\e[0m"
elif [[ $perc > 89 && $perc -le 99 ]]; then
  echo -e " : $perc% \e[93m(DISCHARGING)\e[0m"
elif [[ $perc == 100 ]]; then
  echo -e " : $perc% \e[93m(DISCHARGING)\e[0m"
else
  continue
fi
