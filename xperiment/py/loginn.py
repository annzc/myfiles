import os
print("selamat datang di termux!")
passwod = input("masukkan passwod: ")
def handle_ctrl_c():
    os.system("""
    echo bye bye!
    sleep 1
    pkill com.termux
    sudo pkill com.termux
    """)
