#!/usr/bin/env bash
source ./Creation_function.sh  # Make sure this defines CreationFunction()

while true; do
    # Show a Zenity list dialog for choices
    choice=$(zenity --width=500 --height=250 --list --title="Database Manager" --column="Choose an action" \
        "Create Database" "List Databases" "Drop Database" "Connect to Database" "Exit")

    # If user closes or cancels dialog, exit
    if [[ -z "$choice" ]]; then
        zenity --info --text="No option selected. Exiting."
        exit 0
    fi

    case "$choice" in
        "Create Database")
            CreationFunction
            ;;
        "List Databases")
            # Here you can implement list logic or placeholder
            zenity --info --width=500 --height=250  --text="Listing databases (not implemented yet)."
            ;;
        "Drop Database")
            zenity --question --text="Are you sure you want to drop a database?"
            if [[ $? -eq 0 ]]; then
                zenity --info --width=500 --height=250  --text="Dropping database (not implemented yet)."
            else
                zenity --info --width=500 --height=250  --text="Drop cancelled."
            fi
            ;;
        "Connect to Database")
            zenity --info --width=500 --height=250 --text="Connecting to database (not implemented yet)."
            ;;
        "Exit")
            zenity --info --width=500 --height=250  --text="Exiting."
            exit 0
            ;;
        *)
            zenity --error --width=500 --height=250  --text="Invalid choice. Please try again."
            ;;
    esac
done
