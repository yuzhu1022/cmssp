@echo off
set /p sqlname= 输入要生成的sql文件名【不带.sql后缀】::::::::::
echo.
php ./PhalApi/phalapi-buildsqls ./Config/dbs.php %sqlname%
pause