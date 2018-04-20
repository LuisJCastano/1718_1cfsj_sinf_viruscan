# File that contains functions for antivirus launcher whatthevirus.sh
# don not execute it directly

simple_menu () {
  echo "Please, write an option:"
  echo "1 .- Install"
  echo "2 .- Refresh virus database"
  echo "3 .- Scan a directory"
  echo "4 .- Scan all"
  echo "5 .- Remove clamav"
  echo "6 .- Show version"
  echo "7 .- Help"
  echo "8 .- Exit"

echo "Introduce your option: "
  read Option
}

provide_dir () {
  echo "Please, provide a directory to scan"
  read Dir
}

show_messsage () {
  if [ $? -eq 0 ]
    then
      echo "OPERATION DONE!"
    else
      echo "OPERATION FAILED!"
  fi
}

separator () {
  echo "-----------------------------------------------------------"
}
