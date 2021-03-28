import random, os

mm = '\033[31m'
hh = '\033[32m'
kk = '\033[33m'
bb = '\033[34m'
uu = '\033[35m'
cc = '\033[36m'
m = '\033[91m'
h = '\033[92m'
k = '\033[93m'
b = '\033[94m'
u = '\033[95m'
c = '\033[96m'

warna = [mm, hh, kk, bb , uu, cc, m, h, k, b, u, c]
while True:
    random_warna = random.choice(warna)
    os.system("echo -ne ' sekarang jam '"+random_warna+"$(date \"+%H\"):$(date \"+%M\"):$(date \"+%S\") \033[0m\r ")



