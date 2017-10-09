call git checkout develop
call git pull
call git checkout -b feature_%1
call git push
echo %1