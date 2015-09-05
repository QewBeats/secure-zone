#!/bin/bash
echo "Content-type: text/html"
echo ""
echo "This scripts checks the existence of the messages file."
echo "Checking..."
if [ -f /root/Desktop/results.html ]
  then
    echo "Scan done check your results"
fi
echo
echo "...done."
