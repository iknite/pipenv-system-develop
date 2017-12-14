FROM python:3.6

WORKDIR "/usr/src/app"

#RUN apt-get update && apt-get install -y \
#    libenchant-dev

RUN pip --no-cache-dir install pipenv

COPY Pipfile .

COPY Pipfile.lock .

RUN pipenv install --system --deploy

CMD ["bash"]
