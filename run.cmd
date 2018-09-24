docker run --name "tfs_agent_17758" ^
	-e VSTS_AGENTNAME="Windows Server (version 1809 - 10.0.17758.1) (Docker)" ^
	-e VSTS_ACCOUNT="https://tfs.vitaliy.org" ^
	-e VSTS_TOKEN=%VSTS_TOKEN% ^
	-e VSTS_POOL="Default" ^
	-v \\.\pipe\docker_engine:\\.\pipe\docker_engine ^
	--restart on-failure ^
	-d tfsagent-docker:1809

