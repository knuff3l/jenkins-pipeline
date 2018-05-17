
set /p taskid= < .pidfile
taskkill /pid "%taskid%"
del .pidfile