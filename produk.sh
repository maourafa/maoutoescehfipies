#!/bin/bash

# Color codes
NC='\033[0m'
CYAN='\033[96m'
WHITE='\033[1;97m'

echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e " ${WHITE}             CREATE SSH OVPN ACCOUNT       ${NC}"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""

# User input
read -p "  Username : " LOGIN
read -p "  Password : " PASSWD
read -p "  Expired (hari): " EXPIRED
read -p "  IP Limit: " IP_LIMIT

# Product selection
products=("SG-STANDAR" "SG-VIP" "SG-STB STANDAR" "SG-STB VIP")
echo "Pilih produk:"
for i in "${!products[@]}"; do
  echo "$((i+1)). ${products[$i]}"
done
read -p "Pilihan produk (1-${#products[@]}): " choice

if [[ $choice -ge 1 && $choice -le ${#products[@]} ]]; then
  produk=${products[$((choice-1))]}
  echo "Anda memilih: $produk"
else
  echo "Pilihan tidak valid!"
  exit 1
fi

# Price selection based on product
case $produk in
  "SG-STANDAR")
    harga=("3 Hari: Rp1.000" "7 Hari: Rp3.000" "15 Hari: Rp6.000" "30 Hari: Rp8.000")
    ;;
  "SG-VIP")
    harga=("3 Hari: Rp3.000" "7 Hari: Rp6.000" "15 Hari: Rp9.000" "30 Hari: Rp10.000")
    ;;
  "SG-STB STANDAR")
    harga=("30 Hari: Rp15.000" "60 Hari: Rp28.000")
    ;;
  "SG-STB VIP")
    harga=("30 Hari: Rp18.000" "60 Hari: Rp34.000")
    ;;
esac

echo "Pilih Harga:"
for i in "${!harga[@]}"; do
  echo "$((i+1)). ${harga[$i]}"
done
read -p "Pilihan harga (1-${#harga[@]}): " price_choice

if [[ $price_choice -ge 1 && $price_choice -le ${#harga[@]} ]]; then
  selected_price=${harga[$((price_choice-1))]}
  # Extract only the price part (RpX.XXX)
  price_only=$(echo "$selected_price" | grep -o 'Rp[0-9,.]*')
  echo "Anda memilih: $selected_price"
else
  echo "Pilihan tidak valid!"
  exit 1
fi

# Calculate expiration date
exp_date=$(date -d "$EXPIRED days" +"%Y-%m-%d")

# Display summary
echo -e "
◇━━━━━━━━━━━━━━━━━◇
${WHITE}_DETAIL PEMBELIAN_${NC}
◇━━━━━━━━━━━━━━━━━◇
-» PRODUK : ${produk}
-» REGION : Singapore
-» USERNAME : ${LOGIN}
-» PASSWORD : ${PASSWD}
-» DEVICE : ${IP_LIMIT} IP
-» HARGA : ${price_only}
-» AKTIF : ${EXPIRED} Hari
-» TGL EXP : ${exp_date}
◇━━━━━━━━━━━━━━━━━◇
"