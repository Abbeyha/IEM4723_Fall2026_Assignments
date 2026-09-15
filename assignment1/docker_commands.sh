# Question 1
docker build -t linear-regression-app .
docker tag linear-regression-app:latest linear-regression-app:v0.1.1
docker tag linear-regression-app:latest linear-regression-app:v0.1.2
docker tag linear-regression-app:latest abbeygayle/linear-regression-app:latest
docker push abbeygayle/linear-regression-app:latest
# Question 2
docker build -t regression-volume-app .
docker run --volume "${PWD}\data:/home/iem4723/data" regression-volume-app
# Question 3
docker build -t logistic_regression_layered:latest .
docker build -f Dockerfile.debug -t logistic_regression_layered:latest .
docker run -d --name layered_ex2 logistic_regression_layered:latest
docker exec -it layered_ex2 /bin/sh
docker build -t logistic_regression_layered:latest .
docker run --volume "${PWD}\data:/home/iem4723/data" logistic_regression_layered:latest
# Question 4
docker build -t simple-file-server .
docker run --name simple_file_server --publish 3333:8000 -d simple-file-server:latest