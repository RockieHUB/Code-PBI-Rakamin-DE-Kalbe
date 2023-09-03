@echo off

set "name_of_directory=data1"
set "path_check=C:\hdfs\data\data1"

if exist "%path_check%\" (
    echo %path_check% exists.
) else (
    echo %path_check% does not exist.
)
