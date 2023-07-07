#!/bin/bash -xe
echo "Changing to headset"
wpctl set-default $(pw-dump | jq '.[] | select(.info.props."node.name" == "alsa_output.usb-C-Media_Electronics_Inc._USB_Audio_Device-00.iec958-stereo") | .id')

