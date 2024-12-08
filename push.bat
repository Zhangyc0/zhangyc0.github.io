@echo off
for /f "tokens=1-7 delims=/,.: " %%d in ("%date% %time%") do (
    set datetime=%%d-%%e-%%f-%%h-%%i-%%j
)

cd /d F:\Homepage\zhangyc0.github.io

echo Local Index:



git add .

REM 提交更改，提交信息包含当前日期和时间
git commit -m "Commit on %datetime%"

REM 推送更改到远程仓库
git push

REM 完成提示
echo Git function finished
pause