docker run --name "tfs_agent" ^
	-e VSTS_AGENTNAME="Windows Server (version 1809) (Docker)" ^
	-e VSTS_ACCOUNT="https://tfs.vitaliy.org" ^
	-e VSTS_TOKEN=%VSTS_TOKEN% ^
	-e VSTS_POOL="Default" ^
	--rm -it tfsagent-nodejs-dotnet:1809

#	--restart on-failure ^