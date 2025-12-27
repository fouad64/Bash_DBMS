#!/usr/bin/env bash
List_func(){


local Db_path="$HOME/DBMS/DataBase"
ls -l "$Db_path" |grep ^d | cut -d' ' -f9

}
