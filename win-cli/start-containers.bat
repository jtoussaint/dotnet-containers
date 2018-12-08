pushd ..\compose

docker-compose -f docker-compose.yml ^
               -f docker-compose.override.yml ^
               -f docker-compose.vscode.debug.yml ^
               --project-name dotnet-containers ^
                up -d

popd