# dev gateway with routes
yarn dev --webProxyRoutesJson src/webRoutesDev.json

# docker proxy port
docker run -p 127.0.0.1:9001:3001/tcp

docker run -it --entrypoint=/bin/bash $IMAGE -i

# run without starting
docker run -p 127.0.0.1:9001:3001/tcp -it --entrypoint=/bin/bash $IMAGE -i

docker exec -it $CONTAINER /bin/bash