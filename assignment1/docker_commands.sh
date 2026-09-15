# Question 1
docker build -t linear-regression-app .
docker tag linear-regression-app:latest linear-regression-app:v0.1.1
docker tag linear-regression-app:latest linear-regression-app:v0.1.2
docker tag linear-regression-app:latest abbeygayle/linear-regression-app:latest
docker push abbeygayle/linear-regression-app:latest
# Question 2
docker build -t regression-volume-app .
docker run --volume "${PWD}\data:/home/iem4723/data" regression-volume-app
