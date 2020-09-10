# Docker Flask sentiment analysis API  🐳

<!-- Shields -->
![Top language](https://img.shields.io/github/languages/top/Raouf-sawas/sentiment-analysis-api?style=for-the-badge)
![Code size](https://img.shields.io/github/languages/code-size/Raouf-sawas/sentiment-analysis-api?style=for-the-badge)
[![Last commit](https://img.shields.io/github/last-commit/Raouf-sawas/sentiment-analysis-api?style=for-the-badge)](https://github.com/Raouf-sawas/sentiment-analysis-api/commits/master)
[![License](https://img.shields.io/github/license/Raouf-sawas/sentiment-analysis-api?style=for-the-badge)](https://github.com/Raouf-sawas/sentiment-analysis-api/blob/master/LICENSE)


<!-- Project description -->
This repository aims to be an easy to extend template for building a Python API using Flask and running it with Docker.


## Prerequisities

Before you begin, ensure you have met the following requirements:

#### For only-Docker usage:
* You have a _Windows/Linux/Mac_ machine with the latest version of [Docker](https://www.docker.com/) installed.



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
TO train the model run 
```bash
$ docker run -p 5000:5000 -e train_model="true" -it sentiment-analysis-api
```

Now you should be able to test the API at <http://localhost:5000/>.

To stop the Docker container:
```bash
$ docker ps
$ docker stop <container-id>
```


<!-- ## Contributors

Thanks to the following people who have contributed to this project:

* @Raouf 📖💻 -->


## Contact

If you want to contact me you can reach me at <Abdulraouf.sawas@gmail.com>.


## License

This project uses an [MIT License](https://github.com/Raouf-sawas/sentiment-analysis-api/blob/master/LICENSE).
