@REM #!/bin/sh
@REM $/venv/Scripts/python.exe Server/app.py

@REM echo 'Activate VENV'
@REM start "Reverse Proxy" ngrok.exe http 5000
start "FrontEnd" venv\Scripts\python.exe -m http.server   
cd Server
start "Server" ..\venv\Scripts\flask.exe --app app --debug run
start chrome http://127.0.0.1:5000
start chrome http://127.0.0.1:8000


