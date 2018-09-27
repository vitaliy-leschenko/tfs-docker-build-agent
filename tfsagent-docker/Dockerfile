# escape=`

FROM vitaliyorg.azurecr.io/tfs/agent:1803

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]
USER ContainerAdministrator 

RUN $docker = $env:ProgramFiles+'\docker'; `
    md $docker | Out-Null; `
    [Environment]::SetEnvironmentVariable('PATH', $env:PATH+';'+$docker, 'Machine');
