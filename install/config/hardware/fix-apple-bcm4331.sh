# Install wifi drivers for 2011-2012 MacBooks and Macs using the BCM4331 chip
if lspci -nnv | grep -A2 "14e4:4331" | grep -q "106b:"; then
  echo "Apple BCM4331 detected"
  sudo pacman -S --noconfirm --needed broadcom-wl dkms linux-headers
fi
