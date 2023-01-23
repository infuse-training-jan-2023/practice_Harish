docker build -t frontend .
docker run -it frontend
docker run --rm -it -p 3000:3000/tcp frontend  