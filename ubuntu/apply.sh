#!/bin/bash

LANG=${LANG:-undefined}
HAS_COLOR=${HAS_COLOR:-false}

tee /usr/hello.sh > /dev/null \
<< EOF
#!/bin/bash
RED='\033[0;91m'
NC='\033[0m' # No Color

if [[ "$HAS_COLOR" == true ]]; then
        echo -e "\${RED}"
fi

case "$LANG" in
        "english")
                echo -n -e "Hello, there!"
                ;;
        "italian")
                echo -n -e "Salve!"
                ;;
        *)
                echo -n -e "Beep Boop"
esac

echo -e "\${NC}"
sleep 1
EOF

chmod +x /usr/hello.sh
echo '/usr/hello.sh &' >> ~/.bashrc
