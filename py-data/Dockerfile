FROM python:3.10.4-slim as base

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8


FROM base AS python-deps

# Install pipenv and compilation dependencies
RUN apt-get update && apt-get install -y --no-install-recommends gcc libpq-dev
RUN pip install pipenv
RUN mkdir /home/djlearning
WORKDIR /home/djlearning
# Install python dependencies in .venv
COPY Pipfile .
RUN PIPENV_VENV_IN_PROJECT=1 pipenv install --deploy


FROM base AS runtime

# Create and switch to a new user
RUN useradd --create-home djlearning
# Copy virtual env from python-deps stage
COPY --chown=djlearning:djlearning --from=python-deps /home/djlearning/.venv /home/djlearning/.venv
ENV PATH="/home/djlearning/.venv/bin:$PATH"

USER djlearning
RUN mkdir /home/djlearning/code
WORKDIR /home/djlearning/code
COPY --chown=djlearning:djlearning . .
RUN pip install . && rm -rf /home/djlearning/code/*