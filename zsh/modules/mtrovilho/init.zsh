######################################
# init.zsh - prezto                  #
# today is 5/1/12, it is now 1:10 PM #
# created by mtrovilho               #
######################################

# Aliases ####################################################################
alias h='history'
alias hn='hostname'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias localip="ipconfig getifaddr en1"
alias geoip="curl -D - http://freegeoip.net/xml/$1"

# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

# ROT13-encode text. Works for decoding, too! ;)
alias rot13='tr a-zA-Z n-za-mN-ZA-M'

# File size
alias fs="stat -f \"%z bytes\""

# simple irb (ruby)
alias irb='irb --simple-prompt'

# Always use vim :)
alias vi='vim'

# Homebrew list
alias brews='brew list -1'

# Sort values in pasteboard
alias pbsort='pbpaste|sort|pbcopy'

# Show non-Apple Kernel Extensions
alias kext_list_non_apple='kextstat | grep -v com.apple'

# Enable Remote Disc
alias osx_remote_disk_on="defaults write com.apple.NetworkBrowser EnableODiskBrowsing -bool true && defaults write com.apple.NetworkBrowser ODSSupported -bool true && echo 'please restart your Mac to enable remote disc.'"
alias osx_remote_disk_off="defaults write com.apple.NetworkBrowser EnableODiskBrowsing -bool false && defaults write com.apple.NetworkBrowser ODSSupported -bool false && echo 'please restart your Mac to disable remote disc.'"

# Show/hide hidden files in Finder
alias osx_finder_show_hidden="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias osx_finder_hide_hidden="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias osx_desktop_hide="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias osx_desktop_show="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Quick way to rebuild the Launch Services database and get rid
# of duplicates in the Open With submenu.
alias osx_fix_open_with='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder'

# Stuff I never really use but cannot delete either because of http://xkcd.com/530/
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume 10'"
# alias hax="growlnotify -a 'Activity Monitor' 'System error' -m 'WTF R U DOIN'"

# inUtils
alias textgame='emacs -batch -l dunnet'
alias memory_pressure='/System/Library/CoreServices/talagent -memory_pressure'

# img converter png-jpg
alias 2jpg='mkdir jpgs; sips -s format jpeg *.* --out jpgs'
alias 2png='mkdir pngs; sips -s format png *.* --out pngs'

# End Aliases ################################################################



# Functions ##################################################################

mk() { mkdir -p "$@" && cd "$@"; }

# All the dig info
digga() { dig +nocmd "$1" any +multiline +noall +answer; }

# End Functions ##############################################################



# Unimplemented ##############################################################
#
# compile obj-c
# gcc ${1}.m -o ${1} -ObjC -framework Foundation
#
# VIDEO_TS to dvd-iso:
# hdiutil makehybrid -udf -udf-volume-name MyIso -o /path/to/MyIso.iso /path/to/video_ts/
#
# generate .h file for app path
# sdef ${1} | sdp -fh --basename ${2}
#
# pdf from manpage
# man -t <cmd> | open -fa preview
#
# png-jpg
# mkdir jpegs; sips -s format jpeg *.* --out jpgs
# mkdir pngs; sips -s format png *.* --out pngs
#
# Git related
# gg() { git commit -v -a -m "$*"; }
# gbt() { git branch --track $2 $1/$2; git checkout $2; }
# gbta() {
#   for branch in `git branch -a | grep remotes | grep -v HEAD | grep -v master`
#   do; git branch --track ${branch##*/} $branch; done
# }
#
# AWS Lib ####################################################################
# if [ -f ~/.bash_aws_api ]; then
#   . ~/.bash_aws_api
# fi
# End AWS Lib ################################################################
#
# End Unimplemented #########################################################*
