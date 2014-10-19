clearcache() {
  sudo stop squid3
  rm -rf /var/spool/squid3/*
  squid3 -z
  start squid3
}

clearlogs() {
  sudo rm -f /var/log/squid3/*.log
  reload squid3
}

alias showlogs='sudo tail -f /var/log/squid3/access.log'
alias showcache='sudo ls /var/spool/squid3/'
