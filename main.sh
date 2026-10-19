#!/usr/bin/env bash
export LC_ALL=C

IFS= read -r shop
read -r n1 q1 p1
read -r n2 q2 p2
read -r n3 q3 p3

cat <<EOF
Receipt: $shop
$(printf "%-10s %5s %9s" Item Qty Price)
--------------------------
EOF

printf "%-10s %5s %9.2f\n" "$n1" "$q1" "$p1"
printf "%-10s %5s %9.2f\n" "$n2" "$q2" "$p2"
printf "%-10s %5s %9.2f\n" "$n3" "$q3" "$p3"