#!/bin/bash
[ "$IDENTITY_FILE" ] || exit 2
[ "$OVPN_HOST" ] || exit 3
[ "$OVPN_PATH" ] || exit 4
[ "$OVPN_FILE" ] || exit 5

ssh -o StrictHostKeyChecking=no \
    -o BatchMode=yes \
    -o UserKnownHostsFile=/dev/null \
    -o IdentitiesOnly=yes \
    -o IdentityFile="$(dirname "$0")$IDENTITY_FILE" \
    $OVPN_HOST \
    cat "${OVPN_PATH}${OVPN_FILE}" 2>/dev/null

#ssh -o StrictHostKeyChecking=no \
#    -o BatchMode=yes \
#    -o UserKnownHostsFile=/dev/null \
#    -o IdentitiesOnly=yes \
#    -o IdentityFile="$(dirname "$0")/ovpn-sshkey/id_rsa" \
#    krit@docker30.krit.pro \
#    cat /srv/openvpn/ovpns/"${OVPN_FILE}" 2>/dev/null
