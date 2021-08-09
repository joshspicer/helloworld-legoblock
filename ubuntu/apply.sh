#!/bin/bash

tee /usr/hello.sh > /dev/null \
<< EOF
RED='\033[0;91m'
NC='\033[0m' # No Color

while true
if [[ "$HAS_COLOR" == true ]]; then
    echo -e "${RED}"
fi
do
        case $LANG in
                "english")
                        echo -n -e "Hello, there!"
                        ;;
                "italian")
                        echo -n -e "Salve!"
                        ;;
                *)
                        echo -n -e "Beep Boop"
        esac

        echo -e "${NC}"
        sleep 1
done
EOF

chmod +x /usr/hello.sh
echo '/usr/hello.sh &' >> ~/.bashrc
