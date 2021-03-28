if nc -zw1 google.com 443; then
    echo "we have connectivity"
else
    echo "please check your internet connection"
fi
