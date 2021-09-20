#! /usr/bin/env -S bash -ex

for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
    # shellcheck disable=SC2139,SC2140
	alias "${method}"="lwp-request -m '${method}'"
done

alias ts="torsocks"
alias ts-sh="torsocks --shell"
alias pc="proxychains4"
alias nmap-tor-port-onion="pc nmap -Pn -p"
alias lsof="\${SUDO} lsof"
alias lsofi="lsof -Pani"
alias sss="\${SUDO} ss -tulwn | grep LISTEN"
alias tor-check="curl -vx socks5://127.0.0.1:9050 \
    https://check.torproject.org/api/ip;echo"

alias i2p-check="curl -vx http://127.0.0.1:4444 https://check.torproject.org/api/ip;echo"
alias rsync-preserve="rsync -avxHAX --exclude=swapfile --numeric-ids --info=progress2"
alias hosts-check="egrep -ve \"^#|^255.255.255.255|^127.|^0.|^::1|^ff..::|^fe80::\" /etc/hosts | \
                   sort | uniq | egrep -e \"[1,2]|::\""

## show active network interfaces
alias ifactive="ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'"

## IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

## vnstat
alias vnstat="\${SUDO} vnstat --rateunit --style 3"
alias vnstat-hours="vnstat --hours"
alias vnstat-days="vnstat --days"
alias vnstat-weeks="vnstat --weeks"
alias vnstat-months="vnstat --months"
alias vnstat-all="vnstat-months && echo -n \"\n\" && vnstat-weeks && \
                  echo -n \"\n\" &&  vnstat-days && echo"
alias vnstat-top10="vnstat --top10"
alias vnstat-traffic="vnstat --traffic"
alias vnstat-live="vnstat --live"
alias vnstat-help="vnstat --longhelp"
