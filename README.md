Exercise 1
docker build -t exercise --build-arg script=ruby .
docker run exercise

Exercise 2

docker build -t filemodify .
docker run -it filemodify 

Exercise 3
 docker build -t rubytesting .     
 docker run -it rubytesting 

Exercise 4

docker build -t dateformate .
docker run -it dateformate   

Exercise 5

docker build -t node_server .
docker run -it node_server

Exercise 6
backends Docker images:
    docker build -t server .
    docker run -it server 
frontends Docker images:
    docker build -t frontend .
    docker run -it frontend

docker-compose up --build