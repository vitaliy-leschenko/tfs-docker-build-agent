# escape=`

FROM tfsagent:1809

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]
RUN Invoke-WebRequest -OutFile "C:\docker.exe" -Uri https://master.dockerproject.com/windows/x86_64/docker.exe | Out-Null
USER ContainerAdministrator 

RUN $path = $env:ProgramFiles+'\docker'; `
    md $path | Out-Null; `
    Move-Item -Path "C:\docker.exe" -Destination $path -Force;

RUN $nodejs = $env:ProgramFiles + '\docker'; `
    [Environment]::SetEnvironmentVariable('PATH', $env:PATH+';'+$nodejs, 'Machine');
USER ContainerUser
