Write-Output "starting 'sample-project-debug' container..."
docker run --name "sample-project-debug" -p 11438:1433 -d sample-project-debug
sleep 30s