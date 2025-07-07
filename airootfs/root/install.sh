#!/bin/bash
/root/select-init.sh
INIT_SYSTEM=$(cat /tmp/init_choice)
jq ".init_system = \"$INIT_SYSTEM\" | .packages += [\"$INIT_SYSTEM\"]" /root/install.json >/tmp/install.json
archinstall --config /tmp/install.json
