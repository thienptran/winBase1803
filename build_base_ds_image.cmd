@echo off

set IMAGE=win1803-ds
set VERSION=v1
set PREFIX=thienptran/
rem set PREFIX=

docker build -f Dockerfile -t %PREFIX%%IMAGE%:%VERSION% .
rem docker push %PREFIX%%IMAGE%:%VERSION%
rem docker tag %PREFIX%%IMAGE%:%VERSION% %PREFIX%%IMAGE%:latest
