ping=$(ping -c1 8.8.8.8 | grep 'icmp_seq=1' | awk -F' ' '{print $7 $8}' | awk -F'=' '{print $2}')

if [ -n "$ping" ];then
  echo "  ${ping} "
else
  echo "%{F#FF0000}"
fi