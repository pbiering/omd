#!/bin/bash

MODULE=$1

cd src
url=`wget -q -O - "http://search.cpan.org/perldoc?$MODULE" | sed 's/>/\n/g' | grep '/CPAN' | sed 's/.*"\(\/CPAN.*\.gz\)".*/\1/g' | head -n 1`
url="http://search.cpan.org$url"
echo "$url"
wget "$url"

