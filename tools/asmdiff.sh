#!/bin/bash -e

VERSION="${VERSION:=jp}"
POWERPC="${POWERPC:=tools/powerpc}"
OBJDUMP="$POWERPC/powerpc-eabi-objdump -Dz -bbinary -EB -mpowerpc -M gekko"
if [ ! -z "$1" ]; then
  OPTIONS="--start-address=$(($1)) --stop-address=$(($2))"
fi
$OBJDUMP $OPTIONS baserom.dol > baserom.dump
$OBJDUMP $OPTIONS build/xenoblade.$VERSION/main.dol > main.dump
diff -u --color=always baserom.dump main.dump