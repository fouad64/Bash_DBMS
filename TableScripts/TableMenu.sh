#!/bin/bash

source "$(dirname "$0")/lib/CreateTable.sh"

#-------------------------------------
#---- Display Table Menu ----
#-------------------------------------
PS3="Please enter your choice [1-8]: "

select var in "Create Table" "List Tables" "Drop Table" "Insert into Table" "Select From Table" "Delete From Table" "Update Table" "Exit"; 
do

    # Check if input is empty or invalid
    if [[ -z "$var" ]]; then
        echo "Invalid option. Please try again."
        continue
    fi

    case "$var" in
        "Create Table") CreateTb 
        ;;
        
        "List Tables") ListTb 
        ;;
        
        "Drop Table") DropTb 
        ;;
        
        "Insert into Table") InsertTb 
        ;;
        
        "Select From Table") SelectTb 
        ;;
        
        "Delete From Table") DeleteFromTb 
        ;;
        
        "Update Table") UpdateTb 
        ;;
        
        "Exit") 
        echo "Exiting..."
        break 
        ;;
        
        *)
	echo "Invalid Option. Please try again."
	;;
    esac
done
