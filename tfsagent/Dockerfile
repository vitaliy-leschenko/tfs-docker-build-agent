FROM microsoft/windowsservercore:1803
MAINTAINER Vitaliy Leschenko <vitaliy@leschenko.by>
WORKDIR c:/agent

ENV VSTS_ACCOUNT ""
ENV VSTS_TOKEN ""
ENV VSTS_AGENTNAME ""
ENV VSTS_POOL ""

CMD ["powershell", "./start.ps1"]

COPY agent /agent
COPY start.ps1 /agent
