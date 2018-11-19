FROM microsoft/windowsservercore:1803

ENV chocolateyUseWindowsCompression false

RUN Powershell -Command \
    Set-ExecutionPolicy Bypass -Scope Process -Force ; \
    iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1')) ; \
    refreshenv

ADD artifacts/*.ps1 c:/scripts/

RUN powershell -File \
    c:/scripts/base_software.ps1 \
    choco feature disable --name showDownloadProgress \
    refreshenv

WORKDIR /data

CMD [ "ping localhost -t" ]