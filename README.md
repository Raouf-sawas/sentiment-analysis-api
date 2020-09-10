# Sentiment Analysis and Model Deployment using Flask and Docker 🐳

<!-- Shields -->
![Top language](https://img.shields.io/github/languages/top/Raouf-sawas/sentiment-analysis-api)
![Code size](https://img.shields.io/github/languages/code-size/Raouf-sawas/sentiment-analysis-api)
[![Last commit](https://img.shields.io/github/last-commit/Raouf-sawas/sentiment-analysis-api)](https://github.com/Raouf-sawas/sentiment-analysis-api/commits/master)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://github.com/Raouf-sawas/sentiment-analysis-api/blob/master/LICENSE)



<!-- Project description -->
This repository aims to be an easy to dockerize sentiment analysis api and train models.


## Prerequisities

Before you begin, ensure you have met the following requirement:

* You have machine with the latest version of [Docker](https://www.docker.com/) installed.



## Install/Run with Docker


Clone the project repository:
```bash
git clone https://github.com/Raouf-sawas/sentiment-analysis-api
cd sentiment-analysis-api
```

To build the Docker image, simply run:

```bash
$ docker build -t sentiment-analysis-api .
```

To run the Docker image, run the following:
```bash
$ docker run -p 5000:5000 -it sentiment-analysis-api
```

Now you should be able to test the API at <http://localhost:5000/>.

To stop the Docker container:
```bash
$ docker ps
$ docker stop <container-id>
```
To train the model, run the following: 
```bash
$ docker run -p 5000:5000 -e train_model="true" -it sentiment-analysis-api
```
you should be able to see the trained model on the follwoing directory 
```bash
cd /home/sentiment-model/models
```

To run run the API imag with docker-compuse:

```bash
$ cd docker-compose-api
$ docker-compose up
```
To run the trainning imag with docker-compuse:

```bash
$ cd docker-compose-trinning
$ docker-compose up
```

## Testing the API
1. After you run the sentiment-analysis-api image 

2. In a new terminal window, use HTTPie to make a GET request at the URL of the API.

```bash
http http://127.0.0.1:5000/ query=="the wether is good"
```
## or

in the web browser

```bash
http://127.0.0.1:5000/?query=="the wether is good"
```



3. Example of successful output.

```bash
HTTP/1.0 200 OK
Content-Length: 57
Content-Type: application/json
Date: Thu, 10 Sep 2020 14:07:53 GMT
Server: Werkzeug/1.0.1 Python/3.8.5

{
    "confidence": 0.81,
    "prediction": "Positive"
}

```


<!-- ## Contributors

Thanks to the following people who have contributed to this project:

* @Raouf 📖💻 -->

## Resources

flask api (sentiment-clf) code: https://github.com/schwarsi/flask-rest-setup

## Contact

If you want to contact me you can reach me at <Abdulraouf.sawas@gmail.com>.


## License

This project uses an [MIT License](https://github.com/Raouf-sawas/sentiment-analysis-api/blob/master/LICENSE).
