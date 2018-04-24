#!/bin/bash
# Simple script to launch antivirus tools

# Include functions from other file
source tools.sh
# Main body

clear
while true
do
  simple_menu
  case $Option in
    1 )
      echo "1 .- Install"
      separator
      echo "installing..."
      sudo apt-get install clamav clamav-daemon -y > /dev/null 2> /dev/null

      show_messsage
      separator
      ;;

    2 )
      echo "2 .- Update database clamav"
      separator
      echo "updating database..."
      sudo fresohclam > /dev/null 2> /dev/null

      show_messsage
      separator
      ;;

    3 )
      echo "3 .- Scan directory and remove infected files."
      separator
      provide_dir
      echo "scanning "$Dir"..."
      clamscan /$Dir/ --remove
      separator
      ;;

    4 )
      echo "4 .- Scan all"
      separator
      echo "scanning all, please wait..."
      sudo clamscan -r /
      separator
      ;;

    5 )
      echo "5 .- Remove clamav"
      echo "removing clamav :(..."
      separator
      sudo apt-get remove clamav -y > /dev/null 2> /dev/null

      show_messsage
      separator
      ;;

    6 )
      echo "6 .- Show version"
      separator
      sudo clamscan -V
      separator

      ;;

    7 )
      echo "7 .- Help"
      separator
      sudo clamscan -h
      separator

      ;;

    8 )
      echo "8 .- Exit"
      clear
      exit 1
      ;;

    * )
      separator
      echo "sorry, wrong option"
      separator
      exit 1
      ;;

  esac
done
exit 0
