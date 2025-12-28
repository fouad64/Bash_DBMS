# TableScripts - Bash DBMS

This folder contains all scripts for **table management** and **data manipulation** in the Bash Database Management System (DBMS). Scripts are divided into **CLI (Command Line Interface)**, **GUI (Zenity-based or HTML-based)**, and **SQL-style scripts**.

---

## Directory Structure

bash-dbms/
│
├─ storage/                   # Storage Layer
│   ├─ databases/             # Each DB is a folder
│   │   └─ <db_name>/
│   │       ├─ tables/        # Table data files
│   │       └─ metadata/      # Table metadata
│   └─ db_list.meta           # List of databases
│
├─ DatabaseScripts/           # Database Logic
│   ├─ Create_DB.sh
│   ├─ Drop_DB.sh
│   ├─ List_DB.sh
│   ├─ Rename_DB.sh
│   └─ menuDB.sh              # Main menu
│
└─ TableScripts/              # Table & Data Logic
    ├─ lib/
    │   ├─ CreateTable.sh
    │   ├─ DropTable.sh
    │   ├─ InsertIntoTable.sh
    │   ├─ SelectFromTable.sh
    │   ├─ DeleteFromTable.sh
    │   ├─ UpdateTable.sh
    │   └─ ListTable.sh
    └─ TableMenu.sh


---

## Features

1. **Create Table**
   - Create new tables with column names, data types (`Str` / `Int`), and primary keys.
   - Generates metadata files for each table.

2. **Drop Table**
   - Delete a table and its metadata.
   - Confirmation prompt in CLI or GUI.

3. **List Tables**
   - Display all tables in the current database.

4. **Insert Into Table**
   - Add new records with data type validation and primary key checks.

5. **Select From Table**
   - Retrieve records from a table, supports filtering.

6. **Delete From Table**
   - Remove specific records based on conditions.

7. **Update Table**
   - Modify records with validation for data type and primary key.

8. **Table Menu**
   - Central CLI menu to access all table operations.
   - Can be used independently or from the main database menu.

---

## Usage

### CLI Menu
```bash
cd TableScripts
./Table_Menu.sh
````

* Follow prompts to create, update, delete, or query tables.
* All actions update table files and metadata.

### GUI (Zenity)

```bash
cd TableScripts/GUI_Scripts
./table_Operations.sh
```

* Opens a GUI with buttons for each table operation.
* Input via forms, messages shown in dialogs.

---

## Metadata Structure

For each table:

* **Columns**: `<table_name>_columns.meta`
* **Data types**: `<table_name>_types.meta`
* **Primary key**: `<table_name>_pk.meta`

Stored in:

```
storage/databases/<database_name>/metadata/
```

---

## Notes

* Column names must start with a letter or underscore and contain only letters, numbers, or underscores.
* Data types: `Str` (String) or `Int` (Integer).
* Primary key constraints are enforced during insertion.
* GUI scripts require Zenity or a browser-based interface if using HTML/JS.

---

## License

This project is licensed under the MIT License. See [LICENSE](../LICENSE) for details.

