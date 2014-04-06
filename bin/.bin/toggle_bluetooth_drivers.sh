#!/bin/sh
# http://www.mitsake.net/2013/11/bluetooth-and-virtualbox-on-an-os-x-host/

TBD_OSX_LAUNCH_DEAMON="/System/Library/LaunchDaemons/com.apple.blued.plist"
TBD_OSX_SERIAL_MANAGER="com.apple.iokit.IOBluetoothSerialManager"
TBD_OSX_BT_HOST_CONTROLLER="com.apple.iokit.BroadcomBluetoothHostControllerUSBTransport"

function usage() {
  echo "Toggle OSX lock on BT hardware"
  echo "usage: ${0} on|off"
  echo "NOTE: this script requires root access"
}

function check_root() {
  ROOT_UID="0"
  if [ "$UID" -ne "$ROOT_UID" ] ; then
    echo "You must be root to execute this option!"
    echo "you can use --help to show *some* help."
    exit 1
  fi
}

function disable_bt() {
  launchctl unload ${TBD_OSX_LAUNCH_DEAMON}
  kextunload -b ${TBD_OSX_SERIAL_MANAGER}
  kextunload -b ${TBD_OSX_BT_HOST_CONTROLLER}
}

function enable_bt() {
  launchctl load ${TBD_OSX_LAUNCH_DEAMON}
  kextload -b ${TBD_OSX_SERIAL_MANAGER}
  kextload -b ${TBD_OSX_BT_HOST_CONTROLLER}
}

case ${1} in
  on)  check_root; enable_bt;;
  off) check_root; disable_bt;;
  *) usage
esac

