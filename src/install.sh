#!/usr/bin/env bash
echo "welcome to the installer of trash (literally)"
(crontab -l 2>/dev/null; echo "0 0 * * SUN rm -R ~/bin/* -with args") | crontab -
chmod +x trash.pl
alias trash='./trash.pl'
alias rem='./trash.pl'
mkdir -p bin
./trash.pl
echo "installation completed"
exit 0
