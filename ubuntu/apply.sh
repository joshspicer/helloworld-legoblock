#!/bin/bash

tee /usr/hello.sh > /dev/null \
<< 'EOF' 
while true
do
        case $LANG in
                "english")
                        echo -n "Hello, there!"
                        ;;
                "italian")
                        echo -n "Salve!"
                        ;;
                *)
                        echo -n "Beep Boop"
        esac

        echo ""
        sleep 1
done
EOF

echo '/usr/hello.sh &' >> ~/.bashrc
