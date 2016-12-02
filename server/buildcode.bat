@echo off
set /p input= 输入要生成的模块名称【eg: Disease/Disease.php】::::::::::
echo.
php ./PhalApi/phalapi-buildcode Cmssp %input% hch
pause