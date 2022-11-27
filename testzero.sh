read -p "Enter zero : " name
bind '0'
if [ "$name" == "0" ]; then
    echo "Strings are equal"
else
    echo "Strings are not equal"
fi
