@echo off
chcp 65001 >nul
echo === 上傳開發者網站到 toget300/toget300.github.io ===
echo 請先在 https://github.com/new 建立公開儲存庫，名稱一定要是 toget300.github.io（不要勾 README）
pause
cd /d "%~dp0"
if not exist .git git init -b main
git config user.name "toget300"
git config user.email "toget300@gmail.com"
git add .
git commit -m "developer site and app-ads.txt"
git remote remove origin 2>nul
git remote add origin https://github.com/toget300/toget300.github.io.git
git push -u origin main
echo.
echo 完成！幾分鐘後打開 https://toget300.github.io/app-ads.txt 確認。
pause
