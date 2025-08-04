    echo -e "\e[1;36m==============================\e[0m"
    echo -e "\e[1;33m🔁 MEMULAI PROSES INSTALL....\e[0m"
    echo -e "\e[1;36m==============================\e[0m"
    
    read -n 1 -s -r -p "Press [ Enter ] to Start"
apt update && apt upgrade -y
apt install python3-pip python3
clear
tee -a /etc/systemd/system/maou.service<<END
[Unit]
Description=Simple ftvpn - maourafa
After=network.target

[Service]
WorkingDirectory=/root
ExecStart=/usr/bin/python3 -m /root/ftvpn
Restart=always

[Install]
WantedBy=multi-user.target
END

systemctl start maou
systemctl enable maou
echo -e "\e[1;32m[ I N F O ]    ✅ INSTALLING.......................... 200 OK\e[0m"
sleep 1
echo -e "\e[1;32m[ I N F O ]    ✅ INSTALLING.......................... 200 OK\e[0m"
sleep 1
echo -e "\e[1;32m[ I N F O ]    ✅ INSTALLING.......................... 200 OK\e[0m"
sleep 1
echo -e "\e[1;32m[ I N F O ]    ✅ INSTALLING.......................... 200 OK\e[0m"
sleep 1
echo -e "\e[1;32m[ I N F O ]    ✅ INSTALLING.......................... 200 OK\e[0m"
echo -e "\e[1;32m[ I N F O ]    ✅ INSTALLING.......................... 200 OK\e[0m"
echo -e "\e[1;32m[ I N F O ]    ✅ INSTALLING.......................... 200 OK\e[0m"
echo -e "\e[1;32m[ I N F O ]    ✅ INSTALLING.......................... 200 OK\e[0m"
echo -e "\e[1;32m[ I N F O ]    ✅ INSTALLING.......................... 200 OK\e[0m"
echo -e "\e[1;32m[ I N F O ]    ✅ INSTALLING.......................... 200 OK\e[0m"
echo -e "\e[1;32m[ I N F O ]    ✅ INSTALLING.......................... 200 OK\e[0m"
echo -e "\e[1;32m[ I N F O ]    ✅ INSTALLING.......................... 200 OK\e[0m"
echo -e "\e[1;32m[ I N F O ]    ✅ INSTALLING.......................... 200 OK\e[0m"
echo -e "\e[1;32m[ I N F O ]    ✅ INSTALLING.......................... 200 OK\e[0m"
echo -e "\e[1;32m[ I N F O ]    ✅ INSTALLING.......................... 200 OK\e[0m"
echo -e "\e[1;32m[ I N F O ]    ✅ INSTALLING.......................... 200 OK\e[0m"
echo -e "\e[1;32m[ I N F O ]    ✅ INSTALLING.......................... 200 OK\e[0m"
echo -e "\e[1;32m[ I N F O ]    ✅ INSTALLING.......................... 200 OK\e[0m"
echo -e "\e[1;32m[ I N F O ]    ✅ INSTALLING.......................... 200 OK\e[0m"
echo -e "\e[1;32m[ I N F O ]    ✅ INSTALLING.......................... 200 OK\e[0m"
echo -e "\e[1;32m[ I N F O ]    ✅ INSTALLING.......................... 200 OK\e[0m"
echo -e "\e[1;32m[ I N F O ]    ✅ INSTALLING.......................... 200 OK\e[0m"
echo -e "\e[1;32m[ I N F O ]    ✅ INSTALLING.......................... 200 OK\e[0m"
echo -e "\e[1;32m[ I N F O ]    ✅ INSTALLING.......................... 200 OK\e[0m"
echo -e "\e[1;32m[ I N F O ]    ✅ INSTALLING.......................... 200 OK\e[0m"
sleep 2
echo -e "\e[1;31m[ I N F O ]    ❌ EROR..................................... 404 BAD\e[0m"
echo -e "\e[1;31m[ I N F O ]    ❌ EROR..................................... 404 BAD\e[0m"
echo -e "\e[1;31m[ I N F O ]    ❌ EROR..................................... 404 BAD\e[0m"
sleep 2
echo -e "\e[1;32m[ I N F O ]    😂 CANDA JIR LGI INSTALL.......................... 200 OK\e[0m"

echo "[INFO] BOT PANEL Installation Completed. press /menu /start bot"
echo -e "INFORMASI INSTALL"
echo -e "$domain"
echo -e "$user"
echo -e "t.me/maourafa"