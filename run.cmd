docker run --name "tfs_agent" ^
	-e VSTS_AGENTNAME="Windows Server (version 1803) (Docker)" ^
	-e VSTS_ACCOUNT="https://tfs.vitaliy.org" ^
	-e VSTS_TOKEN=hmtyory27mfho7tpjepbtplz3sxmq2ivw6k3bzzhd56rx6xqnloq ^
	-e VSTS_POOL="Default" ^
	-v \\.\pipe\docker_engine:\\.\pipe\docker_engine ^
        -v "C:/Program Files/Docker":"C:/Program Files/Docker" ^
	--restart on-failure ^
	-d vitaliyorg.azurecr.io/tfs/agent:1803-with-docker

