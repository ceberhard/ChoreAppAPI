$scriptpath = split-path -parent $MyInvocation.MyCommand.Definition
$dockerPath = "$scriptPath\..\web\Dockerfile"

docker build --pull --rm -f $dockerPath -t chore-web-app:latest "$scriptPath\..\web\."
docker run -p 5500:80 --name ChoreWeb --rm chore-web-app
