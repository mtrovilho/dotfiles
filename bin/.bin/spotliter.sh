#!/bin/sh
# Ativa ou Desativa o uso do Spotlight (mds)

function usage() {
  echo "This script can enable or disable the Spotlight Indexing (mds)"
  echo "usage:"
  echo "    --help   : (or -h) for this menu."
  echo "    status   : (or st) Show current status."
  echo "    enable   : (or e, 1, on) Enable Spotlight Indexing."
  echo "    disable  : (or d, 0, off) Disable Spotlight Indexing."
  echo
  echo "NOTE: Don't forget to sudo me!"
}

function show_available_options() {
  echo "available options:"
  echo "    [--help] : show full usage description"
  echo "    status | enable | disable"
}

function check_root() {
  ROOT_UID="0"
  if [ "$UID" -ne "$ROOT_UID" ] ; then
    echo "You must be root to execute this option!"
    echo "you can use --help to show *some* help."
    exit 1
  fi
}

function index_enable() {
  echo -n "enabling spotlight indexing... "
  launchctl load -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist
  echo "[done]"
}

function index_disable() {
  echo -n "disabling spotlight indexing... "
  launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist
  echo "[done]"
}

function index_status() {
  echo "not implemented yet.."
  exit 1
  
  AD_STATUS=$(defaults read com.apple.NetworkBrowser BrowseAllInterfaces)
  echo -n "AirDrop is using Wi-Fi "
  case ${AD_STATUS} in
    1) echo "and Ethernet." ;;
    *) echo "only." ;;
  esac
}

case ${1} in
  --help|-h) usage ;;
  status|st) check_root ; index_status ;;
  enable|e|1|on) check_root ; index_enable ;;
  disable|d|0|off) check_root ; index_disable ;;
  *) show_available_options ;;
esac
