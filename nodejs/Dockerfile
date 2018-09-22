FROM tfsagent:1809

ENV NODE_VERSION="10.11.0"
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]
RUN Invoke-WebRequest -Uri "https://nodejs.org/dist/v$($env:NODE_VERSION)/node-v$($env:NODE_VERSION)-win-x64.zip" -OutFile "C:\node-v$($env:NODE_VERSION)-win-x64.zip"
RUN Expand-Archive "C:\node-v$($env:NODE_VERSION)-win-x64.zip" C:\;
RUN Remove-Item -Path "C:\node-v$($env:NODE_VERSION)-win-x64.zip";
RUN Rename-Item -Path "C:\node-v$($env:NODE_VERSION)-win-x64" -NewName "nodejs" -Force;
RUN Move-Item -Path "C:\nodejs" -Destination "$env:ProgramFiles" -Force;
RUN [Environment]::SetEnvironmentVariable('PATH', '$($env:PATH);C:\Program Files\nodejs', 'User');
