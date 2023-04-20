@echo off

mkdir "labs\group\lieshchov pavlo\command prompt\hidden folder"
mkdir "labs\group\lieshchov pavlo\command prompt\not hidden folder"

echo: FOLDERS WERE CREATED. HERE IS THE FOLDER TREE:

tree /a /f

attrib +h "labs\group\lieshchov pavlo\command prompt\hidden folder"

echo: THE "hidden folder" FOLDER WAS HIDDEN.

xcopy /? > "labs\group\lieshchov pavlo\command prompt\not hidden folder\copyhelp.txt"

echo: "copyhelp.txt" CREATED.

echo f | xcopy "labs\group\lieshchov pavlo\command prompt\not hidden folder"\copyhelp.txt /y "labs\group\lieshchov pavlo\command prompt\hidden folder"\copied_copyhelp.txt

echo: "copied_copytext.txt" CREATED.

mkdir "labs\group\lieshchov pavlo\batch\hidden folder"
mkdir "labs\group\lieshchov pavlo\batch\not hidden folder"

echo: FOLDERS WERE CREATED.

attrib +h "labs\group\lieshchov pavlo\batch\hidden folder"

echo: "labs\group\lieshchov pavlo\batch\hidden folder" WAS HIDDEN.

echo f | xcopy "labs\group\lieshchov pavlo\command prompt\not hidden folder"\copyhelp.txt /y "labs\group\lieshchov pavlo\batch\not hidden folder"\copyhelp.txt
echo f | xcopy "labs\group\lieshchov pavlo\command prompt\hidden folder"\copied_copyhelp.txt /y "labs\group\lieshchov pavlo\batch\hidden folder"\copied_copyhelp.txt

echo: .txt FILED WERE COPIED.

echo: HERE IS THE FOLDER TREE AFTER THESE CHANGES: 

tree /a /f