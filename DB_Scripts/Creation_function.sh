#!/usr/bin/env bash

source ./validation.sh

CreationFunction() {
  
  local Db_Name
  read -p "Enter Data Base Name please" Db_Name
  local SEARCH_PATH="/$HOME/DBMS/DataBase"

 
  if ! validate_db_name "$Db_Name" ; then
    echo "Please try again with a valid database name."
     return 1
  fi

  if [[ -e "$SEARCH_PATH/$Db_Name" ]]; then
   echo "The database '$Db_Name' already exists in $SEARCH_PATH."
   return 1

  else
    mkdir -p "$SEARCH_PATH/$Db_Name"
    echo "The database '$Db_Name' was created :) in $SEARCH_PATH"
  fi
}
