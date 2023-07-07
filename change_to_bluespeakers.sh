#!/bin/bash -xe
echo "Changing to bluetooth speakers"
wpctl set-default $(pw-dump | jq '.[] | select(.info.props."node.name" == "bluez_output.EC_81_93_9C_D5_B8.1") | .id')

