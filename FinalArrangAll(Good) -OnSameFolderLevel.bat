@echo off
color 0a
GOTO Mv_Data
:Mv_Data
cls
if exist *.mp3 ( Set "File=*.apk"
set "Fname=Apks"
goto CreateIt
)
if exist *.jpg ( Set "File=*.jpg"
set "Fname=ImGes"
goto CreateIt
)
if exist *.mp3 ( Set "File=*.mp3"
set "Fname=Mp3s"
goto CreateIt
)
if exist *.lnk (set "File=*.lnk"
set "Fname=ShortCuts"
goto CreateIt
)
if exist *.mkv (set "File=*.mkv"
Set "Fname=Mkvs"
Goto CreateIt
)
if exist *.avi (set "File=*.avi"
Set "Fname=Avis"
Goto CreateIt
)
if exist *.mp4 (set "File=*.mp4"
Set "Fname=Mp4s"
Goto CreateIt)

if exist *.txt (set "File=*.txt"
Set "Fname=Txts"
Goto CreateIt
)
if exist *.rar (set "File=*.rar"
Set "Fname=Rars"
Goto CreateIt
)
if exist *.3gp (set "File=*.3gp"
Set "Fname=3gps"
Goto CreateIt
)
if exist *.flv (set "File=*.flv"
Set "Fname=Flvs"
Goto CreateIt
)
if exist *.zip (set "File=*.zip"
Set "Fname=Zips"
Goto CreateIt
)
if exist *.exe (set "File=*.mkv"
Set "Fname=Mkvs"
Goto CreateIt
)
if exist *.doc (set "File=*.doc"
set "Fname=Docs"
goto CreateIt
)
if exist *.docx (set "File=*.docx"
set "Fname=Docs"
goto CreateIt
)
if exist *.pdf (set "File=*.pdf"
set "Fname=Pdfs"
goto CreateIt
)
if exist *.html (set "File=*.html"
set "Fname=Htmls"
goto CreateIt
)
if exist *.htm (set "File=*.htm"
set "Fname=Htmls"
goto CreateIt
)
goto End

:CreateIt
cls
If NOT EXIST %Fname% md %Fname%
goto MovIt

:MovIt
MOVE /y %File% %Fname%\
goto Mv_Data

:End
cls
Echo Files Move To DataAll Folder SuccessFully
pause
exit