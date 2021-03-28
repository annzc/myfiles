figlet Hai!
echo "Selamat datang di Termux"
my_pw="haha"
user_="Ann"
wrong=0

bye_bye() {
  echo bye bye!
  sleep 1
  killall -9 com.termux 2>/dev/null
  sudo killall -9 com.termux 2>/dev/null
}
#trap bye_bye 2

login_() {
  while :
  do
    echo -n "masukkan password: "
    read passwod
    if [[ $wrong == 3 ]]
    then
      echo -n "Autentikasi gagal [X]. "
      sleep 1
      #bye_bye
    elif [[ $passwod != $my_pw ]]
    then
      echo "password salah!"
      wrong=$((wrong+1))
    elif [[ $passwod == $my_pw ]]
    then
      echo -e "\nAutentikasi berhasil [✓]"
      sleep 1
      break
    fi
  done

  date | lolcat
  echo welcome back $user!
}

set_user() {
  read -p "Masukkan username baru: " user_
  echo "export user_=$user_" > ~/.local/bin/user_.sh
  echo "\nusername berhasil diubah ✓"
  echo "Silahkan reload Termux untuk menerapkan perubahan."
}

login_
