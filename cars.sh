#! /bin/bash
#cars.sh
#Kelly Hawkshaw
int i = 0;
while [[ i==0 ]]; 
do
  echo "My Old Cars Inventory System";
  echo "~~~~~~~~~~~~~~~~~~~~~~~~~";
  echo "1. Enter a Car";
  echo "2. List the cars";
  echo "Q. Quit";
  echo "~~~~~~~~~~~~~~~~~~~~~~~~~";
  read option;
  case "$option" in
    "1" ) echo "Year?";
          read a;
          echo "Make?";
          read b;
          echo "Model?";
          read c;
          d="$a:$b:$c";
          echo "$d" >> my_old_cars;
      ;;
    "2" ) sort my_old_cars;
      ;;
    "Q" ) echo "Goodbye. Thank you.";
          break;
      ;;
    * ) echo "Wrong Input"
      ;;
  esac
done
