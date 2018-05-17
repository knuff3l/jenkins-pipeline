
npm start | for /F "tokens=1,2" %i in ('tasklist /FI "IMAGENAME eq node.exe" /fo table /nh') do echo %j > .pidfile

