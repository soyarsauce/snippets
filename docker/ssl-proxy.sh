docker run -it \
  -e "HOST_IP=`ipconfig getifaddr en0`" \
  -e "PORT=3001" \
  -p 443:443 \
  --rm \
  esplo/docker-local-ssl-termination-proxy