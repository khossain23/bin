#!/bin/bash

# gcalcli manual.
gcalcli_url=https://manpages.debian.org/stretch/gcalcli/gcalcli.1.en.html


if [ $1 = "gcalcli" ]; then
	   chrome $gcalcli_url
   else
	   echo "try again"
   fi
