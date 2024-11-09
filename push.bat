@echo off
REM 获取当前日期和时间
for /f "tokens=1-5 delims=/,.: " %%d in ("%date% %time%") do (
    set datetime=%%d-%%e-%%f_%%g-%%h
)

REM 切换到包含您的Git库的目录
cd /d F:\Homepage\zhangyc0.github.io

REM 查看当前目录
echo 当前目录是:
cd

REM 添加所有更改
git add .

REM 提交更改，提交信息包含当前日期和时间
git commit -m "Commit on %datetime%"

REM 推送更改到远程仓库
git push

REM 完成提示
echo Git添加、提交和推送完成
pause