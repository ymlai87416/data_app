# My data app dashboard

![status](https://cluster.ymlai87416.com/jenkins/buildStatus/icon?job=data-app%2Fmain)

## Topic

* Just add some topics that I need a dashboard
* this is just a placeholder for the time being

## Development

To build
```bash
docker build -t ymlai87416/data-app:latest .
```
To test

```sh
docker run -it --rm -p 8501:8501 ymlai87416/data-app:latest
```

and open the

http://localhost:8501/data-app

## Deployment

Use jenkins to deploy, the destination URL is https://cluster.ymlai87416.com/data-app

## Reference

[1] Deploy to Kubernetes Cluster | CI/CD Kubernetes using Jenkins Pipeline | Jenkins Pipeline Tutorial: https://www.youtube.com/watch?v=YnZQJAMK6JI

[2] Jenkins on Kubernetes - Building Docker Images: https://pushbuildtestdeploy.com/jenkins-on-kubernetes-building-docker-images/

[3] How to Push a Docker Image to Docker Hub Using Jenkins: https://www.youtube.com/watch?v=alQQ84M4CYU&t=189s 
