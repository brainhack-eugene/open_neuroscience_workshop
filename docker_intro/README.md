# Docker Intro

<img src="https://cdn-images-1.medium.com/max/1600/1*126sHZF_Xo8TVuk6ybWnlA.png" width="600">

## What is Docker?
A platform for storing, sharing, and running virtual environments housed within containers. 

Sort of like a virtual machine, but different. 

<img src="https://zdnet2.cbsistatic.com/hub/i/r/2017/05/08/af178c5a-64dd-4900-8447-3abd739757e3/resize/770xauto/78abd09a8d41c182a28118ac0465c914/docker-vm-container.png" width="600">

[Image from ZD Net](https://www.zdnet.com/article/what-is-docker-and-why-is-it-so-darn-popular/)

Docker terminology:  
* Engine = the application you install on the machine; runs the containers  
* Containers = virtual environments  that contain Docker images
* Hub = web service that houses Docker images, which can be shared among users

## Why does this matter?
Containerization facilitates:  
* Portablility  
* Reproducibility  
* Ease of use: all of the dependencies and correct software versions are housed in the container  
* Easy to share: Docker images can be stored and shared on [Docker Hub](https://hub.docker.com/)

## How do I install Docker?
1. Create a [Docker Hub account](https://hub.docker.com/)
2. Download Docker [Mac](https://docs.docker.com/docker-for-mac/install/)  [Windows](https://docs.docker.com/docker-for-windows/install/) [Linux](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
3. Open the disk image
4. Open the Docker app and login
5. For the tutorials today, increase the memory usage in the app: `Preferences > Advanced > increase the memory limit to maximum > "Apply & Restart"`
6. Open your command line tool and check if Docker is running
```
docker info
```
7. Pull MRIQC Docker image for the tutorial
```
docker pull poldracklab/mriqc:0.10.4
```

## Where do I find more information about Docker?
Docker for Scientists – Chris Gorgolewski [[slides]](https://www.slideshare.net/chrisfilo1/docker-for-scientists)  [[talk]](https://www.youtube.com/watch?v=wAATYzn8O54&t=11s) [[lesson]](https://github.com/neurohackweek/docker-for-scientists)
