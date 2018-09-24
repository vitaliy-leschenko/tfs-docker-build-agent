# escape=`

FROM tfsagent-nodejs-dotnet:1809

RUN Invoke-WebRequest -OutFile "C:\docker.exe" -Uri https://master.dockerproject.com/windows/x86_64/docker.exe
USER ContainerAdministrator 

RUN $path = $env:ProgramFiles+'\docker'; `
    md $path; `
    Move-Item -Path "C:\docker.exe" -Destination $path -Force;

RUN $nodejs = $env:ProgramFiles + '\docker'; `
    [Environment]::SetEnvironmentVariable('PATH', $env:PATH+';'+$nodejs, 'Machine');
USER ContainerUser
