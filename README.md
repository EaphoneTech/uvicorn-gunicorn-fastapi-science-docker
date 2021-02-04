# uvicorn-gunicorn-fastapi-science-docker

Docker image based on [tiangolo/uvicorn-gunicorn-fastapi-docker](https://hub.docker.com/r/tiangolo/uvicorn-gunicorn-fastapi), with numpy, pandas, scipy, etc. installed

## Supported Tags

* `python3.8` [(Dockerfile)](https://github.com/biggates/uvicorn-gunicorn-fastapi-science-docker/blob/main/python3.8.dockerfile) ~ 548.14 MB compressed
* `python3.8-slim` [(Dockerfile)](https://github.com/biggates/uvicorn-gunicorn-fastapi-science-docker/blob/main/python3.8-slim.dockerfile)

## Usage

If you use [tiangolo/uvicorn-gunicorn-fastapi-docker](https://hub.docker.com/r/tiangolo/uvicorn-gunicorn-fastapi) and has a `Dockerfile` like this:

```dockerfile
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8

COPY requirements.txt ./
RUN pip install --requirement requirements.txt

COPY ./app /app
```

And in your `requirements.txt` contains numpy, pandas, scipy, etc. so building your docker image takes a long time.

Change the first line

```dockerfile
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8
```

to

```dockerfile
FROM biggates/uvicorn-gunicorn-fastapi-science:python3.8

```

## Pip Content

The following pip packages are installed, as described in [requirements.txt](https://github.com/biggates/uvicorn-gunicorn-fastapi-science-docker/blob/main/requirements.txt):

* matplotlib
* numpy
* pandas
* scikit-learn
* scipy
* wfdb
