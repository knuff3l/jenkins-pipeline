
set /p taskid= < ..\..\.pidfile
taskkill /F /pid "%taskid%"
del ..\..\.pidfile