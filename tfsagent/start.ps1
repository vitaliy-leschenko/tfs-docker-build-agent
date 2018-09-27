if ((Test-Path .agent) -ne $true) {
    $agent = "Docker-Agent-$(hostname)"
    if ("$env:VSTS_AGENTNAME" -ne "") {
        $agent = "$env:VSTS_AGENTNAME"
    }
    .\bin\Agent.Listener.exe configure --url "$env:VSTS_ACCOUNT" --auth PAT --token "$env:VSTS_TOKEN" --agent $agent --pool "$env:VSTS_POOL" --work "c:\_work" --replace --unattended
}

.\bin\Agent.Listener.exe run
