#!/bin/sh
# Ativa ou Desativa o uso do AirDrop via Ethernet

function usage() {
	echo "This script can change what interfaces will AirDrop use"
  echo "usage:"
  echo "    --help : (or -h) for this menu."
  echo "    yes    : (or y, 1, on) to set AirDrop to use ethernet too."
	echo "    no     : (or n, 0, off) to set AirDrop to wi-fi only."
}

function show_available_options() {
	echo "available options:"
	echo "    [--help] : show full usage description"
	echo "    status | yes | no"
}

function relaunch_finder() {
	echo -n "relaunching Finder... "
	killall Finder
	echo "[done]"
}

function set_ad_eth_on() {
	echo -n "setting airdrop to wi-fi and ethernet... "
	defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1
	echo "[done]"
	relaunch_finder
}

function set_ad_eth_off() {
	echo -n "setting airdrop to wi-fi only... "
	defaults write com.apple.NetworkBrowser BrowseAllInterfaces 0
	echo "[done]"
	relaunch_finder
}

function show_ad_status() {
	AD_STATUS=$(defaults read com.apple.NetworkBrowser BrowseAllInterfaces)

	echo -n "AirDrop is using Wi-Fi "
	case ${AD_STATUS} in
		1) echo "and Ethernet." ;;
		*) echo "only." ;;
	esac
}

case ${1} in
	"--help"|"-h") show_usage ;;
	"status"|"st") show_ad_status ;;
	"yes"|"y"|"1"|"on") set_ad_eth_on ;;
	"no"|"n"|"0"|"off") set_ad_eth_off ;;
	*) show_available_options ;;
esac
