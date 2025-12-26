#!/usr/bin/env bash

source ./validation.sh

CreationFunction() {
 DataBaseName=$(zenity  --entry --width=500 --height=250  --title=" DB Name " --text="Enter Data Base Name please")
  local SEARCH_PATH="/home/$USER/DBMS/DataBase"

 
  if ! validate_db_name "$DataBaseName" ; then
    zenity --error --width=500 --height=250   --text="Please try again with a valid database name."
    return 1
  fi

  if [[ -e "$SEARCH_PATH/$DataBaseName" ]]; then
   zenity --error --width=500 --height=250  --text="The database '$DataBaseName' already exists in $SEARCH_PATH."

  else
    mkdir -p "$SEARCH_PATH/$DataBaseName"
    zenity --info --width=500 --height=250 --text="The database '$DataBaseName' was created :) in $SEARCH_PATH"
  fi
}
