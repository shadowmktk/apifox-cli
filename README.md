# apifox-cli
构建apifox-cli镜像


# Running
```
docker build -t apifox-cli:v1.0.0 .

docker run --rm --name apifox-cli \
  -e APIFOX_ACCESS_TOKEN=APS-xxx \
  -e APIFOX_ITERATION=1 \
  -e APIFOX_REPORTERS=html,cli \
  -e APIFOX_ENVIRONMENT=5930915 \
  -e APIFOX_SCENARIO_ID=5200179 \
  apifox-cli:v1.0.0

# or

docker run --rm --name apifox-cli \
  -v $PWD/apifox-cli.json:/apifox-cli.json \
  apifox-cli:v1.0.0 \
  apifox run /apifox-cli.json -r cli,html
```
