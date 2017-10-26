
# drone-ecr-puller
Drone plugin pull Docker images from AWS EC2 Container Registry.


## Usages

### Execute from the working directory:

```
docker run  --rm \
  -e PLUGIN_ACCESS_KEY=your_access_key \
  -e PLUGIN_SECRET_ACCESS_KEY=your_secret_key \
  -e PLUGIN_REGION=your_region \
  -v /var/run/docker.sock:/var/run/docker.sock \
  --privileged \
  drone-ecr-puller --dry-run
```

### .drone.yml example

```
image: agur/drone-ecr-puller
access_key: your_access_key
secret_access_key: +YnQaok/your_secret_key
region: your_region
commands:
- docker run [your image @ ecr]
volumes:
- /var/run/docker.sock:/var/run/docker.sock
- and more...
```
