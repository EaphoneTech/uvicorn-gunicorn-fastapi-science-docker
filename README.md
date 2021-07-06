# uvicorn-gunicorn-fastapi-science-docker

Docker image based on [tiangolo/uvicorn-gunicorn-fastapi-docker](https://hub.docker.com/r/tiangolo/uvicorn-gunicorn-fastapi), with numpy, pandas, scipy, scikit-learn installed

## Supported Tags

* `python3.8`, `python3.8-20210706` [(Dockerfile)](https://github.com/biggates/uvicorn-gunicorn-fastapi-science-docker/blob/main/python3.8.dockerfile) ~ 547.71 MB compressed
* `python3.8-slim`, `python3.8-slim-20210706` [(Dockerfile)](https://github.com/biggates/uvicorn-gunicorn-fastapi-science-docker/blob/main/python3.8-slim.dockerfile) ~ 281.99 MB compressed

* `python3.8-20210204` ~ 550.91 MB compressed
* `python3.8-slim-20210204` ~ 277.45 MB compressed

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
* pip
* scikit-learn
* scipy
* wfdb


### `20210706`

```
Package           Version
----------------- ---------
click             7.1.2
fastapi           0.65.2
gunicorn          20.0.4
joblib            1.0.1
matplotlib        3.4.2
numpy             1.21.0
pandas            1.3.0
pydantic          1.8.2
requests          2.25.1
scikit-learn      0.24.2
scipy             1.7.0
uvicorn           0.13.1
wfdb              3.4.0
```

### `20210204`

```
Package         Version
--------------- ---------
click           7.1.1
fastapi         0.62.0
gunicorn        20.0.4
joblib          1.0.0
matplotlib      3.3.4
numpy           1.20.0
pandas          1.2.1
pydantic        1.7.3
requests        2.25.1
scikit-learn    0.24.1
scipy           1.6.0
uvicorn         0.11.3
wfdb            3.2.0
```

## Building

### build image

```bash
docker build -t test -f python3.8.dockerfile .
```

### rename image

```bash
docker tag test biggates/uvicorn-gunicorn-fastapi-science:python3.8
```

### push image

```bash
docker image push biggates/uvicorn-gunicorn-fastapi-science:python3.8
```
