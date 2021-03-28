import os
os.system('echo "#!/data/data/com.termux/files/usr/bin/env bash" > ~/john_aliases')
os.system('echo ')
with open('list.txt','r') as f:
    for i in f.read().split('\n'):
        a = i.split('.')[0]
        os.system('echo "alias '+a+'=\'~/bin/JohnTheRipper/run/'+i+'\'" >> ~/john_aliases')
