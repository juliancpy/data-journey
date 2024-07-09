# Data Journey Python Package

Welcome to the data_journey Python package! This package is designed to help you navigate through your data analysis journey with ease.

## Installation

To install the data_journey package, you can use `pipenv` and the `Pipfile` provided in this repository. Simply run the following command:

```shell
pip install pipenv
pipenv --python 3.10
pipenv shell
python --version
pipenv lock
pipenv install -d
```

## Dockerfile

If you prefer to use Docker for your development environment, we have also included a `Dockerfile` in this repository. You can build the Docker image using the following command:

```shell
docker build -t data_journey .
```

Once the image is built, you can run a container with the following command:

```shell
docker run -it data_journey
```

That's it! You are now ready to embark on your data analysis journey with the data_journey Python package.
