@echo off

set "filename_excel=daily_market_price.xlsx"
set "source_directory=C:\local\data\market"
set "target_directory=C:\hdfs\data\data1"

if exist "%target_directory%\" (
    echo %target_directory% exists.
    echo Proceeding to copy %filename_excel% from %source_directory% into %target_directory% 
    copy "%source_directory%\%filename_excel%" "%target_directory%"
    if errorlevel 1 (
        echo Error copying the file.
    ) else (
        echo File Moved Successfully.
    )
) else (
    echo %target_directory% does not exist.
)
