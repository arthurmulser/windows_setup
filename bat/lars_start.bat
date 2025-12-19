@echo off

cd /d "C:\_Projects\laravel_mars\laravel-app"

start cmd /c "cd /d C:\_Projects\laravel_mars\laravel-app && php artisan serve"

timeout /t 3 >nul

npm run dev

pause