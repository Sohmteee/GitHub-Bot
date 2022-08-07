@echo off
:start
if exist .git goto yes 
if not exist .git goto no

:yes
echo.
echo Checking git status...
git status

echo.
echo Adding git...
git add .
echo Added git successfully

echo.
echo Adding commits...
git commit -m "new commit"
echo Added commits successfully

echo.
echo Pushing git
git push
echo Pushed git successfully

goto end

:no
echo It looks like you haven't added this project to your GitHub yet

echo.
echo Initializing git...
git init
echo Initialized git successfully

echo.
echo Adding git...
git add .
echo Added git successfully

echo.
echo Adding commit...
git commit -m "first commit"
echo Added commit successfully

echo.
echo Creating branch...
git branch -M main
echo Created branch successfully

echo.
echo Copy and Paste the link to your GitHub repository
echo It should look something like "https://github.com/<username>/<name of repository>.git"
set /p rep= Paste the link here: 
git remote add origin %rep%
echo Added remote git successfully

echo.
echo Pushing git...
git push -u origin main
echo Pushed git successfully

goto end

:end
timeout 60
goto start
